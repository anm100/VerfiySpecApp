spin -a  req1.pml
gcc -DMEMLIM=1024 -O2 -DXUSAFE -w -o pan pan.c
pan -m10000  -a -N r2 >> out1.txt