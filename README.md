# Create Ethereum Private NetWork

## install Ethereum
Mac OSX:
```
see  https://github.com/ethereum/go-ethereum/wiki/Installation-Instructions-for-Mac
```

Ubuntu:
```
see  https://github.com/ethereum/go-ethereum/wiki/Installation-Instructions-for-Ubuntu
```

## init env
cd you src
```
git clone https://github.com/Xib1uvXi/eth_pn.git
cd eth_pn
./init_pn_env.sh
```

## start private network
you first start private network
on linux:
```
./console.sh 1
```
on mac:
```
./console.sh 2
```

create you etherbase account:
```
personal.newAccount("your password")
```

you will get a account, exit console
next time start console:
```
./console.sh 1 you_account
```