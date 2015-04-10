## Virtual Test Machine
  
###Fast Guide

Download vagrant box "Ubuntu-14.04_64-Desktop"

Add box to vagrant

```
$ vagrant box add Ubuntu-14.04_64-Desktop package.box
``` 

Clone test repo from git

```
git clone test-repo
```

####Initialize workspace

SSH
```
sh initialize-ssh.sh <your name>
```

or

HTTPS
```
sh initialize-https.sh <your name>
```
or

```
sh initialize-https.sh
```

####Start Vagrant

```
vagrant up
```


