#!/usr/bin/env bash


root=`pwd`

osEnv=$1
if [ ${osEnv} ];then
    if [ ${osEnv} == "1" ];then
        ipc="${HOME}/.ethereum/geth.ipc"
    elif [ ${osEnv} == "2" ];then
        ipc="${HOME}/Library/Ethereum/geth.ipc"
    else
        echo "linux 1 ; oxs = 2"
        exit 1
    fi
else
    echo "plz tall me your os env, linux = 1 or oxs = 2"
    exit 1
fi

etherbase=$2

if [ ${etherbase} ];then

    if [ ${etherbase} == "wx" ];then
        etherbase="0x3f5ee47f7a3d96e9949df010f827f97ef7ed9814"
    fi

    geth --identity "private_net" \
     --rpc --rpcport "8545" \
     --rpccorsdomain "*" \
     --datadir "${root}/data" \
     --port "30303" \
     --ipcpath "${ipc}" \
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
     --ipcpath "${ipc}" \
     --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" \
     --networkid 82403 \
     --nat "any"  \
     console
fi




