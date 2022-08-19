# Dockgrind_42
Docker container with valgrind, vim, nano, gcc and make to test memory leaks in 42 made projects

```bash
$ https://github.com/diserran/Dockgrind_42.git

$ cd Dockgrind_42

$ docker build -t $(whoami)/valgrind .

$ cd PROJECT_DIRECTORY

$ docker run -d -it -v `pwd`:/valgrind/ --name $USER-valgrind $(whoami)/valgrind

$ docker exec -it $USER-valgrind bash

```
