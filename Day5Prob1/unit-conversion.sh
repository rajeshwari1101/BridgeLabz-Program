#!/bin/bash  -x

<<cmt
5. Unit Conversion
a. 1ft = 12 in then 42 in = ? ft
b. Rectangular Plot of 60 feet x 40 feet in meters
c. Calculate area of 25 such plots in acres
cmt

echo "a. 1ft = 12 in then 42 in = ? ft"

_42inch=`echo 42/12 | bc -l`
#_42inch=`echo 42/12 | bc -l `
echo $_42inch
echo "b. Rectangular Plot of 60 feet x 40 feet in meters"
plot_sq_meters=`echo 60*0.3048*40*0.3048| bc -l`

_25_plot_sq_meters=`echo $plot_sq_meters*25 | bc -l`
echo $_25_plot_sq_meters
echo "1 acre is 4046.86 sq meters so $_25_plot_sq_meters meter in acre is"

acres=`echo $_25_plot_sq_meters/4046.86 | bc -l`
