# pyverman
 a version manager for python

 # To-Do List
 |Task                            | progress   |
 |:-------------------------------|-----------:|
 | create script itself           | complete   |
 | create installation method     | complete   |
 | create readme and documentation| complete   |

# Dependencies
these are mostly just the dependencies for building python. If you don't have all of these installed, you will likely have an incomplete version of python.

```
build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev curl libbz2-dev liblzma-dev lzma tk tk-dev libsqlite3-dev
```

# Installation
## With Curl
run this command:
 ``` bash
 bash -c "$(curl -fsSL https://raw.githubusercontent.com/Silicasandwhich/pyverman/main/netinstall.sh)"
 ```
## Through the source
1. clone the repository
2. run ```./install.sh``` inside the pyverman directory
3. type "install" when prompted
4. if you ever wish to uninstall, run the script again, but instead type "uninstall" when prompted.

# Usage
```
pyverman [options] action version
```
## options
--help -h — lists options and actions  
--with-optimizations — runs make with optimizations enabled  
-O — shorthand of --with-optimizations  
--list-dependencies — lists all dependencies  
-d — shorthand of --list-dependencies  
--version — list current script version  
--verbose -v — don't redirect make output to /dev/null

## Actions
install — installs the selected version  
uninstall — uninstalls the selected version  
cache — download and configure selected version to cache  
uncache — removes selected version's build files from the .pyverman folder  
reinstall — reinstalls python version using cached files

