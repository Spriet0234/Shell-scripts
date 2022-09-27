#!/bin/bash

read -p "Item number: " itemNumber
fileName=./data/${itemNumber}.item

count=0

if [ ! -f "$fileName" ]; then
    echo "ERROR: item not found"
    exit 1
fi


for ((x=0; x<3; x++)); do

    if [ $x -eq "0" ]; then
        read simpleName itemName
    elif [ $x -eq "1" ]; then
        read curQuantity maxQuantity
    elif [ $x -eq "2" ]; then
        read descript
    fi

done < $fileName

echo
echo "Item Name: $itemName"
echo "Simple Name: $simpleName"
echo "Item Number: $num"
echo "Qty: $curQuantity / $maxQuantity"
echo "Description: $descript"
