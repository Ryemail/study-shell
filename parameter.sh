#!/bin/sh

echo "Shell 传递参数！"

echo "执行的文件名: $0"
echo "第一个参数: $1"
echo "第二个参数：$2"

echo "传递的参数个数: $#"


echo "所有参数：$*"

for value in $*;do
    echo ${value}
done;


echo "当前进程ID：$$"

echo "退出状态：$?"

echo "当前选项：$-"


echo "\"\$@\":$@"

if [ -n "$3" ];then
    echo $3
else
    echo "请传入第三个参数"
fi