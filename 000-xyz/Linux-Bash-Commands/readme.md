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
