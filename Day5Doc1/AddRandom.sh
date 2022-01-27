#!/bin/bash -x


x_r=$((RANDOM));
y_r=$((RANDOM));

z_r=$(($x_r+$y_r));

echo $z_r
