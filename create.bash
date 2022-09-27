#!/bin/bash

read -p "Item number: " itemNumber
fileName=./data/${itemNumber}.item

read -p "Simple name: " simpleName

read -p "Item name: " itemName

read -p "Current quantity: " curQuantity

read -p "Maximum quanitiy: " maxQuantity

read -p "Description: " descript

if [ -f "$fileName" ]; then
    echo "ERROR: item already exists"
    exit 1
fi

date=`date +%m-%d-%y`
echo "$simpleName $itemName" > $fileName
echo "$curQuantity $maxQuantity" >> $fileName
echo "$descript" >> $fileName
echo
echo "CREATED: $date - $simpleName" >> "./data/queries.log"

echo
echo "Item Name: $itemName"
echo "Simple Name: $simpleName"
echo "Item Number: $itemNumber"
echo "Qty: $curQuantity / $maxQuantity"
echo "Desciption: $descript"
