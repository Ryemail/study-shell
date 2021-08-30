#!/bin/sh

a=10
b=20

val=`expr $a + $b`
echo "两数之和，$val"

val=`expr $a - $b`
echo "两数之查，$val"

val=`expr $a \* $b`
echo "两数之积，$val"

val=`expr $a / $b`
echo "a%b, $val"

if [ $a == $b ];then
    echo '$a 等于$b'
fi


if [ $a != $b ];then
    echo '$a != $b'
fi

if [ $a -eq $b ];then
    echo "$a -eq $b：a 不等于 b"
fi

if [ $a -ne $b ];
then
    echo "$a -ne $b: a 不等于 b"
fi

if [ $a -gt $b ];then
    echo "$a -gt $b: 左边大于右边吗？"
fi

if [ $a -ge $b ];then
    echo "$a -ge $b： 左边大于等于右边吗?"
fi


if [ $a -lt $b ];then
    echo "$a -lt $b：左边小于右边吗？"
fi


if [ $a -le $b ];then
    echo "$a -le $b: 左边小于等于右边吗？"
fi

if [ $a -le $b -o 4 -eq 4 ];then
    echo "至少成立了一个"
fi


if [[ $a -lt 100 && $b -gt 100 ]];then
    echo "返回 true"
else
    echo "返回 false"
fi

if [[ $a -lt 100 || $b -gt 100 ]];then
    echo "返回 true --||"
else
    echo "返回 false --||"
fi

string=""
if [ -z $string ];then
    echo "length: 0"
fi

string="555"

if [ -n $string ];then
    echo "length:${#string}"
fi

string=""
if [ $string ];then
    echo "the value is empty"
fi