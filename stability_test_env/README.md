## Stabilyt test environment
  
###Fast Guide

Clone test enviroments repo from git

```
git clone https://github.com/N4SJAMK/contriboard_test_automation_envs.git
```

####1.Initialize workspace
Go to stability_test_env folder inside cloned repo.

```
cd stability_test_env/
```

Install robot framework to your local machine.
```
sh install_test_env.sh
```

Initialize by running a initialization commands according you environment:

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

####2. Start Contriboard

Start your Contriboard

```
vagrant up
```

####3. Start Contriboard services

Start Contriboard services by running command:
```
sh start_contriboard.sh
```

####4. Run stability test

Start stability test from ```stability_test_env``` folder.

```
sh stability.sh
```

