#!/bin/bash

# echo -e \n ✅
echo -e "sed starting"

# cat ./multi-line-text.txt
# cat ./multi-line-text.txt | sed "s/div/XYZ"

# echo '<div> xgqfrms </div>' | sed "s/div/XYZ" >> bug.md
# sed "s/div/XYZ" ./multi-line-text.txt >> bug.md
# sed "s/div/XYZ" ./multi-line-text.txt

# /regexp/ 正则表达式后面少了一个 `/` ✅
# sed "s/div/XYZ/" ./multi-line-text.txt >> multi-line-text.md
# sed "s/<div>//" | sed "s/</div>//" ./multi-line-text.txt >> multi-line-text.md
# sed "s/<div>//" "s/</div>//" ./multi-line-text.txt >> multi-line-text.md
# sed "s/<div><\/div>//" ./multi-line-text.txt >> multi-line-text.md
# sed "s/<div>//" | sed "s/<\/div>//" ./multi-line-text.txt >> multi-line-text.md

# ??? 正则 replace multi tags

# clear first
rm -rf ./multi-line-text.md

# 双引号，多行文本 ❌
# sed -i '' "1i\
# Perl 🐪 camel\
# " ./multi-line-text.txt
# sed: 1: "1iPerl 🐪 camel": command i expects \ followed by text

# 单引号，多行文本 ✅ 直接插入数据到原始文件
# sed -i '' '1i\
# Perl 🐪 camel\
# ' ./multi-line-text.txt

# 1s 正则插入, 单引号 ✅
# sed -i '' '1s/^/Perl 🐪 camel\n/' ./multi-line-text.txt

# 1s 正则插入, 单引号 + 双引号 ✅
# sed -i "" '1s/^/Perl 🐪 camel\n/' ./multi-line-text.txt

# 1s 正则插入, 双引号 ✅
sed -i "" "1s/^/Perl 🐪 camel\n/" ./multi-line-text.txt


# sed -i '' "1i\Perl 🐪 camel" ./multi-line-text.txt
# sed: 1: "1i\Perl 🐪 camel": extra characters after \ at the end of i command

# sed -i '' "1i Perl 🐪 camel" ./multi-line-text.txt
# sed: 1: "1i Perl 🐪 camel": command i expects \ followed by text

# sed 默认不会直接修改源文件, 只是返回一个 STDOUT ✅
# sed "s/<div>/👻/" ./multi-line-text.txt

# sed 同时执行多个命令 `-e`, 使用英文的分号分隔 `;` ✅
# sed 的多个命令写在同一个双引号里面
# sed -e "s/<div>//; s/<\/div>//" ./multi-line-text.txt >> multi-line-text.md
sed -e "s/<div>/🎉/; s/<\/div>/👻/" ./multi-line-text.txt >> multi-line-text.md

# sed -e "s/<div>//"; "s/<\/div>//" ./multi-line-text.txt >> multi-line-text.md


# echo ./multi-line-text.txt
# echo ./multi-line-text.txt | sed "s/div/XYZ"
# echo ./multi-line-text.txt | sed 's/div/XYZ'
# echo ./multi-line-text.txt | sed 's/div/👻'
# 正则表达式中的未终止替换
# sed: 1: "s/div/👻": unterminated substitute in regular expression

# echo ./multi-line-text.txt | sed 's/<div>/👻' | sed 's/</div>/🎉'

# sed 's/<div>/👻' | sed 's/</div>/🎉' multi-line-text.txt => multi-line-text.md

echo -e "sed finished"


# echo "this is abc" | sed -e 's/abc/xyz/'
