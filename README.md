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

ensure your installation worked
```
geth version

you will see:
                Geth
                Version: 1.8.2-stable
                Git Commit: b8b9f7f4476a30a0aaf6077daade6ae77f969960
                Architecture: amd64
                Protocol Versions: [63 62]
                Network Id: 1
                Go Version: go1.9.4
                Operating System: linux
                GOPATH=/home/qydev/go
                GOROOT=/usr/local/go
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