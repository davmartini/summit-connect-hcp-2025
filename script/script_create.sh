#!/bin/bash
for i in $(seq -w 1 10); do
echo hcp$i
cat pull.tmp | sed "s/-tmp/$i/g" > pull.hcp$i
cat key.tmp | sed "s/-tmp/$i/g" > key.hcp$i
oc apply -f pull.hcp$i
oc apply -f key.hcp$i
rm -rf pull.hcp$i key.hcp$i
done