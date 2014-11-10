#!/bin/bash

for i in {0..79}
do
  mongoimport -d bigdata -c ebird --file ebird/ebird"$i".json --jsonArray
done
