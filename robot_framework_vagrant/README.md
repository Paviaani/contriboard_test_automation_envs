## Virtual Test Machine
  
###Fast Guide

Download vagrant box "Ubuntu-14.04_64-Desktop"

Add box to vagrant

```
$ vagrant box add Ubuntu-14.04_64-Desktop package.box
``` 

Clone test enviroments repo from git

```
git clone https://github.com/N4SJAMK/contriboard_test_automation_envs.git
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


