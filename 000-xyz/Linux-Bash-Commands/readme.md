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

sed 's/<div>/๐ป' | 's/</div>/๐' multi-line-text.txt => multi-line-text.md
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
# ๆง่ก sed ่ๆฌ๏ผsed ๅ้ขๆๅฎๆไปถๅๅๅจๅฝไปค่ก้
$ sed -f test.sed ./test.txt

$ sed -f test.sed ./test.txt >> ./test.out.md

# โ -n 
$ sed -f test.sed  -n ./test.txt
# โ -n
$ sed -f -n test.sed ./test.txt

```

```md
# man โ
$ man sed

$ sed --version
sed: illegal option -- -
usage: sed script [-Ealnru] [-i extension] [file ...]
        sed [-Ealnu] [-i extension] [-e script] ... [-f script_file] ... [file ...]

$ sed -v
sed: illegal option -- v
usage: sed script [-Ealnru] [-i extension] [file ...]
        sed [-Ealnu] [-i extension] [-e script] ... [-f script_file] ... [file ...]

$ sed -V
sed: illegal option -- V
usage: sed script [-Ealnru] [-i extension] [file ...]
        sed [-Ealnu] [-i extension] [-e script] ... [-f script_file] ... [file ...]

```


