# Linux BashCommands

## sed

```sh
# sed options script file
$ sed -e script command
$ sed -f script file

# chmod +x ./sed-replace.sh 
```

```sh
#!/bin/bash
#!/bin/sh

sed 's/<div>/👻' | 's/</div>/🎉' multi-line-text.txt => multi-line-text.md
```

<!-- 

html emmet

div*10{line 0$}

<div>line 01</div>
<div>line 02</div>
<div>line 03</div>
<div>line 04</div>
<div>line 05</div>
<div>line 06</div>
<div>line 07</div>
<div>line 08</div>
<div>line 09</div>
<div>line 10</div>
 -->

## sed `-f`

```sh
# 执行 sed 脚本，sed 后面指定文件名写在命令行里
$ sed -f test.sed ./test.txt

$ sed -f test.sed ./test.txt >> ./test.out.md

# ✅ -n 
$ sed -f test.sed  -n ./test.txt
# ❌ -n
$ sed -f -n test.sed ./test.txt

```