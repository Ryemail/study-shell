#!/bin/sh

getName(){
    echo "我的第一个shell 函数"
}

getName

# add(){
#     echo "两数之和："
#     echo "请输入第一个数："
#     read name
#     echo "请输入第二个数："
#     read age
#     return $(($name+$age))
# }

# add
# echo "完整的信息：$? !"

getParam(){
    echo "第一个参数：$1"
    echo "第一个参数：$2"
    echo "第一个参数：$3"
    echo "所以参数 $*"
    echo "所有参数"\$\@":$@"
    echo "传递的参数个数：$#"
}

getParam 1 2 3 56


onTest(){
    echo "test"

    return $((1+2))
}

onTest

val=$?

echo $?
echo $val

echo "Hello Word" | grep -e Hello

if echo "hello word !" | grep -e word;then
    echo "匹配到了"
else
    echo "没有匹配到"
fi

onNumber(){
    return $1
}

if onNumber 0;then
    echo false
else
    echo true
fi





read -p "input a value:" value3
read -p "input a value:" vlaue4

echo "result = $[value3+value4]"