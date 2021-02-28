# pyvm
 a version manager for python

 # To-Do List
 |Task                            | progress   |
 |:-------------------------------|-----------:|
 | create script itself           | started    |
 | create installation method     | not started|
 | create readme and documentation| started    |

# Dependencies
these are mostly just the dependencies for building python. If you don't have all of these installed, you will likely have an incomplete version of python.

```
build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev curl libbz2-dev liblzma-dev lzma tk tk-dev libsqlite3-dev
```

# Usage
```
pyvm [options] action version
```
## options
-h — lists options and actions  
--with-optimizations — runs make with optimizations enabled  
-O — shorthand of --with-optimizations

## Actions
install — installs the selected version  
uninstall — uninstalls the selected version  
uncache — removes selected version's build files from the .pyverman folder  
reinstall — reinstalls python version using cached files

