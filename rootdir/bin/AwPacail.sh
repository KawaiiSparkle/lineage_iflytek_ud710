#!/system/bin/sh
echo 0 > /sys/bus/i2c/devices/4-0034/re
echo 0 > /sys/bus/i2c/devices/4-0035/re
echo 0 > /sys/bus/i2c/devices/4-0036/re
echo 0 > /sys/bus/i2c/devices/4-0037/re

echo 0 > /sys/bus/i2c/devices/4-0034/f0
echo 0 > /sys/bus/i2c/devices/4-0035/f0
echo 0 > /sys/bus/i2c/devices/4-0036/f0
echo 0 > /sys/bus/i2c/devices/4-0037/f0

sleep 1
#remove old result when test again
#//#ifdef VENDOR_EDIT
#//ypzhu3@iflytek.com.feature,BUGID:none,i20210423,remove old result when test again
rm /mnt/vendor/productinfo/audio/aw881xx_smartpa/aw_cali.bin
touch /mnt/vendor/productinfo/audio/aw881xx_smartpa/aw_cali.bin
chmod 666 /mnt/vendor/productinfo/audio/aw881xx_smartpa/aw_cali.bin
#//#else
#rm mnt/vendor/productinfo/audio/aw881xx_smartpa/aw_cali.bin
#touch chmod 666 mnt/vendor/productinfo/audio/aw881xx_smartpa/aw_cali.bin
#chmod 666 mnt/vendor/productinfo/audio/aw881xx_smartpa/aw_cali.bin
#//#endif VENDOR_EDIT


AWRET=`aw881xx_cali fast_start_cali aw881xx_smartpa`
SMARTPA1=`echo $AWRET | awk -F '4-0034\]fixed_re=' '{print $2}' | awk -F 'mohm' '{print $1}'`
SMARTPA2=`echo $AWRET | awk -F '4-0035\]fixed_re=' '{print $2}' | awk -F 'mohm' '{print $1}'`
SMARTPA3=`echo $AWRET | awk -F '4-0036\]fixed_re=' '{print $2}' | awk -F 'mohm' '{print $1}'`
SMARTPA4=`echo $AWRET | awk -F '4-0037\]fixed_re=' '{print $2}' | awk -F 'mohm' '{print $1}'`

if [ ! -z $SMARTPA1 ] && [ ! -z $SMARTPA2 ] && [ ! -z $SMARTPA3 ] && [ ! -z $SMARTPA4 ];then
		echo "[4-0034]fixed_re=${SMARTPA1}"
		echo "[4-0035]fixed_re=${SMARTPA2}"
		echo "[4-0036]fixed_re=${SMARTPA3}"
		echo "[4-0037]fixed_re=${SMARTPA4}"
		echo -e "aw88xx fast_start_cali success\n"
else
		echo "[4-0034]fixed_re=${SMARTPA1}"
		echo "[4-0035]fixed_re=${SMARTPA2}"
		echo "[4-0036]fixed_re=${SMARTPA3}"
		echo "[4-0037]fixed_re=${SMARTPA4}"
		echo -e "aw88xx cali fail\n"
		exit 1
fi


LEFTRE=`cat /sys/bus/i2c/devices/4-0034/re | grep 'mohm' | awk -F '=' '{print $2}'`
LEFTRE1=`echo $LEFTRE | sed 's/mohm//'`
echo "1:left re mohm:"
echo $LEFTRE1
AWRET=`aw881xx_cali store_fixed_re aw881xx_smartpa 4 34 $LEFTRE1`
SMARTPA1=`echo $AWRET | awk -F 'cali store ' '{print $2}'`
if [ "$SMARTPA1" == "success" ];then
		echo -e "[4-0034] aw88xx store_fixed_re success"
		echo "[4-0034]cali store ${SMARTPA1}\n"
else
		echo -e "aw88xx cali fail"
		echo "[4-0034]cali store ${SMARTPA1}\n"
		exit 1
fi

LEFTRE=`cat /sys/bus/i2c/devices/4-0035/re | grep 'mohm' | awk -F '=' '{print $2}'`
LEFTRE2=`echo $LEFTRE | sed 's/mohm//'`
echo "2:left re mohm:"
echo $LEFTRE2
AWRET=`aw881xx_cali store_fixed_re aw881xx_smartpa 4 35 $LEFTRE2`
SMARTPA1=`echo $AWRET | awk -F 'cali store ' '{print $2}'`
if [ "$SMARTPA1" == "success" ];then
		echo -e "[4-0035] aw88xx store_fixed_re success"
		echo "[4-0035]cali store ${SMARTPA1}\n"
else
		echo -e "\n aw88xx cali fail"
		echo "[4-0035]cali store ${SMARTPA1}\n"
		exit 1
fi

RIGHTRE=`cat /sys/bus/i2c/devices/4-0036/re | grep 'mohm' | awk -F '=' '{print $2}'`
RIGHTRE3=`echo $RIGHTRE | sed 's/mohm//'`
echo "3:right re mohm:"
echo $RIGHTRE3
AWRET=`aw881xx_cali store_fixed_re aw881xx_smartpa 4 36 $RIGHTRE3`
SMARTPA1=`echo $AWRET | awk -F 'cali store ' '{print $2}'`
if [ "$SMARTPA1" == "success" ];then
		echo -e "[4-0036] aw88xx store_fixed_re success"
		echo "[4-0036]cali store ${SMARTPA1}\n"
else
		echo -e "aw88xx cali fail"
		echo "[4-0036]cali store ${SMARTPA1}\n"
		exit 1
fi

RIGHTRE=`cat /sys/bus/i2c/devices/4-0037/re | grep 'mohm' | awk -F '=' '{print $2}'`
RIGHTRE4=`echo $RIGHTRE | sed 's/mohm//'`
echo "4:right re mohm:"
echo $RIGHTRE4
AWRET=`aw881xx_cali store_fixed_re aw881xx_smartpa 4 37 $RIGHTRE4`
SMARTPA1=`echo $AWRET | awk -F 'cali store ' '{print $2}'`
if [ "$SMARTPA1" == "success" ];then
		echo -e "[4-0037] aw88xx store_fixed_re success"
		echo "[4-0037]cali store ${SMARTPA1}\n"
else
		echo -e "aw88xx cali fail"
		echo "[4-0037]cali store ${SMARTPA1}\n"
		exit 1
fi

echo -e "\naw88xx cali all sucess"

exit 0
