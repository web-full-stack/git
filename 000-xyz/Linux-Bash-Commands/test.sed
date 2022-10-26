# 注释: `.sed`扩展名的文件，是 sed 命令集合专用的，本质上还是一种 shell scirpt
# 无需写 sed 和 文件名了，因为`.sed`扩展名的文件中是纯 sed 命令
s/abc/🎉/
s/xyz/👻/
s/ufo/🛸/


# 执行 sed 脚本，sed 后面指定文件名写在命令行里
# $ sed -f test.sed ./test.txt
# $ sed -f test.sed -n ./test.txt
# $ sed -f test.sed ./test.txt >> ./test.out.md

# sed: 12: test.sed: invalid command code <
# <<EOF

# s/abc/xyz/ test.txt
# sed: 4: test.sed: bad flag in substitute command: 't'

# s/abc/xyz/ ./test.txt
# sed: 4: test.sed: bad flag in substitute command: '.'

# 's/abc/xyz/' ./test.txt
# sed: 4: test.sed: invalid command code ' ❌

# sed -e 's/abc/xyz/' ./test.txt
# sed: 2: test.sed: bad flag in substitute command: 's' ❌

# sed -e 's/abc/xyz/' -n ./test.txt

# EOF