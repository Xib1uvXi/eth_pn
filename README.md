# Create Ethereum Private NetWork

## init env
```
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
personal.newAccount("your passwork")
```

you will get a account, exit console
next time start console:
```
./console.sh 1 you_account
```