#!/bin/bash

# echo -e \n ✅
echo -e "sed starting"

# cat ./multi-line-text.txt
# cat ./multi-line-text.txt | sed "s/div/XYZ"

# echo '<div> xgqfrms </div>' | sed "s/div/XYZ" >> bug.md
# sed "s/div/XYZ" ./multi-line-text.txt >> bug.md
# sed "s/div/XYZ" ./multi-line-text.txt

# /regexp/ 正则表达式后面少了一个 `/` ✅
sed "s/div/XYZ/" ./multi-line-text.txt >> multi-line-text.md

# echo ./multi-line-text.txt
# echo ./multi-line-text.txt | sed "s/div/XYZ"
# echo ./multi-line-text.txt | sed 's/div/XYZ'
# echo ./multi-line-text.txt | sed 's/div/👻'
# 正则表达式中的未终止替换
# sed: 1: "s/div/👻": unterminated substitute in regular expression

# echo ./multi-line-text.txt | sed 's/<div>/👻' | sed 's/</div>/🎉'

# sed 's/<div>/👻' | sed 's/</div>/🎉' multi-line-text.txt => multi-line-text.md

echo -e "sed finished"
