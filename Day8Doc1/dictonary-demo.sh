#!/bin/bash -x

declare -A sounds

sounds[dog]="bark"
sounds[cat]="meow"
sounds[cow]="moo"


echo "dog sound ${sounds[dog]}"  ##dog sounds
echo "all animal sounds ${sounds[@]}" ## all values
echo "all animals ${!sounds[@]} " ##all keys
echo "Number of animals ${#sounds[@]}" ##number of elements

unset sounds[dog]  #delete dog
echo "all animal sounds ${sounds[@]}" ## all values
