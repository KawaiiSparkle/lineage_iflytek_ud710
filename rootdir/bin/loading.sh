#!/usr/bin/bash
cd
echo "\ncpu_loading:"
/vendor/bin/power/cpu/loading/cpu_loading -t $1
echo "\ngpu_loading:"
/vendor/bin/power/gpu/loading/gpu_loading -t $2
echo "\nddr_loading:"
/vendor/bin/power/ddr/loading/ddr_loading -t $3
cd /vendor/bin/power/loadings

