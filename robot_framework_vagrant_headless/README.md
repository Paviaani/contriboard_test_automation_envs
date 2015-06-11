## Virtual Test Machine
  
###Fast Guide

Clone test enviroments repo from git

```
git clone https://github.com/N4SJAMK/contriboard_test_automation_envs.git
```

####Initialize workspace
Go to robot_framework_vagrant_headless folder inside cloned repo.

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

####Start Vagrant and connect to vagrant machine

Start vagrant:
```
vagrant up
```

Connect to vagrant machine:
```
vagrant ssh
```

####Set up virtual display

Start vncserver:
```
vncserver :89 -geometry 1920x1200 -depth 24
```

Input password (password lenght:8)


Export display:
```
export DISPLAY=:89
```

Virtual display is ready to use

###Tests

Run tests from ```teamboard-test/robot_framework/ContriboardTesting``` or ```teamboard-test/robot_framework/ContriboardTestScenarios``` folder using ```DISPLAY=:89 pybot testnamehere```

More about test [here](https://github.com/N4SJAMK/teamboard-test)
