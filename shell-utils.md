SHELL UTILS
===========


Get the directory of the current script
-----------------------------
aka print working directory

```shell
BASE_DIR=$(dirname $0)
ROOT_DIR=$PWD/$BASE_DIR/
```

Loop over args
---------------

```shell
for arg
do
    cat $arg >> $TMPFILE
done
```
