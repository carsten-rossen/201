#!/bin/bash

# Script name:      Challenge04
# Author:           Carsten Rossen
# Date:             1/28/21
# Purpose:          To create a txt file by referencing an array of directories

# Declaration of variables
dir_names=("dir1" "dir2" "dir3" "dir4")
dir_paths=()
index=0

# Main
mkdir ${dir_names[*]}

for name in ${dir_names[@]}
do
    path="/home/serv/201/$name"
    dir_paths+=("$path")
done

while [ $index -lt 4 ] 
do
    touch ${dir_paths[$index]}/new.txt
    index=$((index + 1))
done

# End