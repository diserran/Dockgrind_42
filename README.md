# Dockgrind_42
Docker container with valgrind, vim, nano, gcc and make to test memory leaks in 42 made projects

```bash
#(First of all, remember to launch the docker app)
#Clone the repository and enter into the downloaded folder 
$ git clone https://github.com/diserran/Dockgrind_42.git
$ cd Dockgrind_42
#Use this command to build the docker image
$ docker build -t $(whoami)/valgrind .
#Go to the project folder where you want to execute valgrind 
$ cd PROJECT_DIRECTORY
#This command runs the docker container, mounting the current folder into it
$ docker run -d -it -v `pwd`:/valgrind/ --name $USER-valgrind $(whoami)/valgrind
#Use this command to enter in the container using a bash shell
$ docker exec -it $USER-valgrind bash

```

> This repository is based in the [valgrind_42](https://github.com/grouville/valgrind_42) project made by [grouville](https://github.com/grouville)
