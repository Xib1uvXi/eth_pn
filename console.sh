#!/usr/bin/env bash


root=`pwd`

etherbase=$1

if [ ${etherbase} ];then

    if [ ${etherbase} == "wx" ];then
        etherbase="0x26c9bf0665fa7ecf75c74aded192e1c466bedfd7"
    fi

    geth --identity "private_net" \
     --rpc --rpcport "8545" \
     --rpccorsdomain "*" \
     --datadir "${root}/data" \
     --port "30303" \
     --ipcpath "${root}/data/geth.ipc" \
     --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" \
     --networkid 82403 \
     --nat "any"  \
     --etherbase "${etherbase}" \
     console
else
    geth --identity "private_net" \
     --rpc --rpcport "8545" \
     --rpccorsdomain "*" \
     --datadir "${root}/data" \
     --port "30303" \
     --ipcpath "${root}/data/geth.ipc" \
     --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" \
     --networkid 82403 \
     --nat "any"  \
     console
fi




