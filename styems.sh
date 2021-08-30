#!/bin/bash

value=10
value2=30

if [ $value -eq $value2 ];then
    echo "value 等于 value2"
elif [ $value -gt $value2 ];then
    echo "value 大于 vlaue2"
elif [ $value -lt $value2 ];then
    echo "value 小于 value2"
else 
    echo "没有匹配的条件"
fi


array=(100 200 300)
for loop in ${array[*]};do
    echo $loop
done

for loop in 1 2 3 4;do
    echo $loop
done


echo '按下 <CTRL -D> 退出'
echo '输入你的名字：'
# while read name
# do
#     echo "是的！$name是一个好名字"
#     exit
# done

# 无限循环
# while true
# do
#     echo "就你厉害"
# done

num=0
until [ ! $num -lt 10 ]
do
    echo $num

    let 'num++'

done


#case
echo "请输入一个数字："
read code
case $code in
    1) echo "你输入了$code"
    ;;
    2) echo "你输入了$code"
    ;;
    3) echo "你输入了$code"
    ;;
    4) echo "你输入了$code"
    ;;
    *) echo "请输入1-4之间的整数"
esac


# while true
# do  
#     echo  "请输入1到5之间的数字："
#     read number
    
#     case $number in
#         1|2|3|4|5) 
#             echo "你输入了$number"
#             ;;
#         *) 
#             echo "输入的数字超出范围！"
#             break
#     esac
# done

site="runoob"

case "$site" in
    "runoob")
        echo "菜鸟教材"
        ;;
    "google")
        echo "Google 搜索"
        ;;
    "taobao") 
        echo "淘宝"
        ;;
esac

for((i=0;i<=5;i++));do
    if [ $i%2 ];do
        echo "是偶数$i"
    else
        echo "$i"
    fi
done