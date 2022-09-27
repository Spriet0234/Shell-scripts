#!/bin/bash

read -p "Item number: " itemNumber
fileName=./data/${itemNumber}.item

date=`date +%m-%d-%y`

read -p "Simple name:" simpleName
read -p "Item name:" itemName
read -p "Current quantity:" curQuantity
read -p "Maxumum quantity:" maxQuantity
read -p "Description:" descript

if [ ! -f "$fileName" ]; then
    echo "ERROR: item not found"
    exit 1
fi


for ((x=0; x<3; x++)); do
  
    if [ $x -eq "0" ]; then
        read simpleName1 itemName1
    elif [ $x -eq "1" ]; then
        read curQuantity1 maxQuantity1
    elif [ $x -eq "2" ]; then
        read descript1
fi

done < $fileName

if [ -z "$simpleName" ]; then
    simpleName="$simpleName1"
fi
if [ -z "$itemName" ]; then
    itemName="$itemName1"
fi
if [ -z "$curQuantity" ];then
    curQuantity="$curQuantity1"
fi
if [ -z "$maxQuantity" ]; then
    maxQuantity="$maxQuantity1"
fi
if [ -z "$descript" ]; then
    descript="$descript1"
fi
 
echo "$simpleName $itemName" > $fileName
echo "$curQuantity $maxQuantity" >> $fileName
echo "$descript" >> $fileName

echo "UPDATED: $date - $simpleName" >> "./data/queries.log"
