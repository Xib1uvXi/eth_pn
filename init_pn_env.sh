#!/usr/bin/env bash

if [ $(which geth) == "geth not found" ];then
    echo "geth not found, please install geth or set geth to path"
    exit 2
fi

root=`pwd`

rm -rf data
mkdir data

geth --datadir "${root}/data" init geth_gensis.json

pw=$1
if [ ! ${pw} ];then
#    echo "默认账户密码123"
    pw="123"
fi

a=$(geth --datadir "${root}/data" account new --password <(echo ${pw}))

b=${a#*\{}
account="0x"${b%\}*}

echo "address:  "${account}
echo "password:  "${pw}

rm -rf .etherbase
echo ${account} >> .etherbase

rm -rf .pwd
echo ${pw} >> .pwd