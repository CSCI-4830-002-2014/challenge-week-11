#!/bin/bash

for i in {0..9}
do
  mongoimport --collection tist --file tist/tist"$i".json --jsonArray
done
