## Stability test environment
  
###Fast Guide

Clone test enviroments repo from git

```
git clone https://github.com/N4SJAMK/contriboard_test_automation_envs.git
```

####1.Initialize workspace
Go to fMBT_stability_test_env folder inside cloned repo.

```
cd fMBT_stability_test_env/
```

Install robot framework to your local machine.
```
sh install_test_depencies.sh
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


#####Preconditions
These test are from ```fmbt/Contriboard``` folder. Before running them check that variables are correct for your Contriboard configuration.

Edit this line from ```adapters/seleniumadapter.py``` to match your Contriboard server url:
```
url = 'http://sut-cb.n4sjamk.org'
```

### Physical Display

Start stability test from ```fMBT_stability_test_env``` folder.

```
sh stability_test.sh
```

### Virtual Display

Install vnc4server
```
sudo apt-get install vnc4server
```

Start vncserver:
```
vncserver :89 -geometry 1920x1200 -depth 24
```

Input password (password lenght:8)


Export display:
```
export DISPLAY=:89
```

Start stability test from ```fMBT_stability_test_env``` folder.

```
DISPLAY=:89 sh stability_test.sh
```


####5. Create graphs from stats (optional)

From stats folder run create_graph script

```
sh create_graph.sh
```

####6. Clear Database (optional)

Go inside your vagrant machine
```
vagrant ssh
```

Open contriboard-populator folder use command to clear database.
(This is done automatically when running ```stability_test.sh``` or ```stability_test_loop.sh```)
```
fab clear_database
```
More info on Contriboard-populator [here](https://github.com/N4SJAMK/contriboard-populator).
