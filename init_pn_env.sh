#!/bin/bash

root=`pwd`

rm -rf data
mkdir data

geth --datadir "${root}/data" init geth_gensis.json