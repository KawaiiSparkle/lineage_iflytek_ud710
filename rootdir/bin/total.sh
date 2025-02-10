#!/usr/bin/bash
cd
echo "\ncpu_loading:"
./vendor/bin/power/cpu/loading/cpu_loading -t 10
echo "\ncpu_trans_table:"
./vendor/bin/power/cpu/trans_table/cpu_trans_table -t 10
echo  "\npower_hint:"
./vendor/bin/power/paras/tool/power_hint
echo  "\npower_contrl:"
./vendor/bin/power/paras/tool/power_ctrl
echo  "\nthread_top:"
./vendor/bin/power/tops/tops

echo  "\ngpu_loading:"
./vendor/bin/power/gpu/loading/gpu_loading -t 10
echo  "\ngpu_trans_table:"
./vendor/bin/power/gpu/trans_table/gpu_trans_table -t 10

echo  "\nddr_loading:"
./vendor/bin/power/ddr/loading/ddr_loading -t 10
echo  "\nddr_tans_table:"
./vendor/bin/power/ddr/trans_table/ddr_trans_table -t 10

echo  "\ninterrupts:"
./vendor/bin/power/interrupt/interrupt  -t 10

echo  "\nfps"
./vendor/bin/power/frame/fps_sf -t  1

echo  ""
./vendor/bin/power/backlight/bright -n 1
cd /vendor/bin/power/total
