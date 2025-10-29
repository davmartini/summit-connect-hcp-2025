#!/bin/bash
for i in $(seq -w 1 10); do
echo hcp$i
oc delete secret pullsecret-cluster-hcp$i -n clusters
oc delete secret sshkey-cluster-hcp$i -n clusters
done