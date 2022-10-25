#!/bin/bash

# echo \n ❌
# echo "sed test\n"

# echo -e \n ✅
echo -e "sed test\n"

# echo $"双引号 ❌"
# echo $"sed test\n"

# echo $'单引号 ✅'
echo $'sed test\n'

# printf "sed test\nabc xyz\n"
# printf: usage: printf [-v var] format [arguments] ???
# zsh: argument list too long: ./sed-replace.sh ???

# printf "sed test\nabc xyz"
# sed test
# abc xyz%
# printf % bug ❓

# multi lines comments `<<EOF` & `EOF`

# multi_lines_comments = <<EOF

<<EOF

The `%` is not printed by `printf`, it's printed by `zsh` as part of its command prompt.

Bash uses `$` or something more complicated instead, that's why it looks different with bash.

`printf` prints the same thing both times, and following that the shell prints it's command prompt.

This command prompt looks different in `zsh` than in `bash/sh`.

https://stackoverflow.com/questions/8467424/echo-newline-in-bash-prints-literal-n

EOF

# echo "$multi_lines_comments"
