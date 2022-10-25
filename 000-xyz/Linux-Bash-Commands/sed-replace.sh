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

# sed 不会直接修改源文件, 只是返回一个 STDOUT ✅
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
