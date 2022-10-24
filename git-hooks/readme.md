# git hooks


```sh

$ cd ./.git && ls -al

$ cd ./hooks && ls -al

```

```sh

$ code ./pre-commit.sample
# OR
$ cat ./pre-commit.sample

$ vim ./pre-commit.sample
# ESC + :q, exit vim
# ESC + :!q, exit vim
$ vi ./pre-commit.sample
$ nano ./pre-commit.sample
# Control + X, exit nano

```

## demo

rename `pre-commit.sample` => `pre-commit.sh` OR `pre-commit`

script 默认执行环境是 sh

1. bash

`pre-commit.sh` OR `pre-commit`

```sh
#!/bin/sh
```

2. perl

`pre-commit.perl` OR `pre-commit`

```sh
#!/usr/bin/perl

# 在 perl 的路径上可以加上 -w，可以显示程序中出现的一些警告
#!/usr/bin/perl -w

```

https://www.cnblogs.com/xgqfrms/p/16823456.html

3. python

`pre-commit.py` OR `pre-commit`

```sh
#!/usr/bin/python3 
# OR
#!/usr/bin/python

```

> test

```sh
$ git add git-hooks/readme.md

$ gst
# -m ✅
$ git commit -m"python script"

# no message ❌
$ git commit
# Aborting commit due to empty commit message.

```

## refs

https://www.cnblogs.com/xgqfrms/p/16822322.html

https://github.com/web-full-stack/git/tree/main/git%20hooks
