#!/bin/bash

userName='阮书垚'

echo ${userName}

for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill}Script"
done

# 删除变量，删除后不可在使用
unset userName

echo ${userName}

# 只读变量
readonly age=25

# age=26

# 拼接字符串
name=阮垚

echo "${name},age is 24"

# 字符串
text="落花有意随流水，流水无情向东流"

# 获取字符串长度
echo "字符串长度,${#text}"

# 截取字符串
echo "截取字符串,${text:0:7}"

#查找字符串
echo `expr index $text 流`


var=http://www.aaa.com/123.htm
# 截取字符串右边的，删除左边的
echo ${var#*www}

# 截取字符串右边的，以匹配的相同字符最后一个开始截取
echo ${var##*/}

# 截取字符串左边的，删除右边的
echo ${var%/*}

# 截取字符串左边 从右往左的最后一个相同字符开始截取
echo ${var%%/*}

# 从倒数第七个字符开始截取到结束
echo ${var:0-7}

# 从倒数第七个字符开始截取3个字符
echo ${var:0-7:3}

echo ${var:0}
echo ${var#*//}