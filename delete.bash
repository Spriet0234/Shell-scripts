#!/bin/bash

read -p "Item number: " itemNumber
fileName=./data/${itemNumber}.item

if [ ! -f "$fileName" ]; then
    echo "ERROR: item not found"
    exit 1
fi

read simpleName a < $fileName
date=`date +%m-%d-%y`

rm "$fileName"

echo "DELETED: $date - $simpleName" >> "./data/queries.log"

echo "$simpleName was successfully deleted"
