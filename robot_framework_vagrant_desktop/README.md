## Virtual Test Machine
  
###Fast Guide

Clone test enviroments repo from git

```
git clone https://github.com/N4SJAMK/contriboard_test_automation_envs.git
```

####Initialize workspace
Go to robot_framework_vagrant_desktop folder inside cloned repo.

Initialize the workspace by running a initialization commands according you environment:


If you can use direct ssh access and account to github use command:
```
sh initialize-ssh.sh <your name>
```

If you want to clone repositorys and fork it using https you should use command:
```
sh initialize-https.sh <your name>
```

If you have still problems you should try to do just a cloning repository!
```
sh initialize-https.sh
```

####Start Vagrant

```
vagrant up
```

###Tests

Run tests from ```runtests``` folder using ```pybot``` command

