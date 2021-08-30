#!/usr/bin/bash

# 判断相等 -eq 
if test 45 -eq 45;then
    echo "-eq,相等"
fi

# -ne
num1=34
num2=33

if test $[num1] -ne $[num2];then
    echo "-ne,不相等"
fi

# -gt

if test $[num1] -gt $[num2];then
    echo "-gt，大于是成立"
fi

# -ge

if test 66 -ge 66;then
    echo "-ge,大于等于是成立"
fi


# -lt

l1=36
l2=35

if test $[l1] -lt $[l2]
then
    echo "小于"
else
    echo "小于不成立"
fi

if test $[l1] -le $[l2]
then
    echo "小于等于"
fi

# =

code1=12
code2=34

if test $code1 = $code2
then
    echo "相等$code1"
else
    echo "不想等$code2"
fi

if test $code1 != $code2
then
    echo "!=，$code1"
fi


string="自由的向往"


if [ -n "$string" ];then
    echo "-n，字符串有值"
fi


string=""
if [ -z "$string"];then
    echo "-z,是空字符串"
fi

if [ -z "$1" ]
then
    echo "参数是空的,你为什么不传参？"
fi

if [ -n "$1" ]
then
    echo "我收到了参数，谢谢 $1"
fi


# -e 
if test -e ./array.sh
then
    echo "array.sh"
fi


if test -r ./array.sh;then
    echo "array.sh 可读"
fi

if test -w ./array.sh;then
    echo "array.sh 可写"
fi

if test -x ./array.sh;then
    echo "array.sh 可执行"
else
    echo "array.sh 不可执行"
fi


if [ ! -s ./data/1.sh ];then
    echo "/data/1.sh 文件不存在"
    echo "#!/usr/bin/sh" > "./data/1.sh"
fi

if test -d ./filw/
then
    echo "是目录"
fi


if test -f ./echo.sh
then
    echo "是普通文件"
fi

if test -c ./echo.sh
then
    echo "文件存在且为字符型特殊"
fi

if test -b ./echo.sh
then
    echo "文件存在且为块特殊文件"
fi


if test -d ./filw
then
    if test ./filw/a.sh;
    then
        echo "我是filw下的a.sh"
    fi
fi

if test -e ./array.sh -a -e ./string.sh
then
    echo "两个文件都存在"
fi

if [ ! -d ./data/ ];then
    mkdir ./data/
else
    echo "文件存在"
fi

if [ ! -f ./data/import.txt ];then
    echo `date` > ./data/import.txt
else
    echo "文件已经存在"
    rm -f ./data/import.txt
fi
