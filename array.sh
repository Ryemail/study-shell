#!/bin/bash

code=(200 300 4000)

# 获取单个元素
echo ${code[0]}

# 获取所以元素
echo "获取所以元素=>${code[@]}"

#获取数组长度
echo "获取长度=>${#code[@]}"

#获取单个元素长度
echo "获取单个元素长度=>${#code[2]}"


# 多行注释

::<<!
    word=有心人天不负
    echo ${word}
!
