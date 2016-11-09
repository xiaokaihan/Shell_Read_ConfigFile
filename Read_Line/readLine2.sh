#!/bin/sh
# 如果ip包含引号，这里也会输出引号
ip=`sed '/^ip=/!d;s/.*=//' readline`  

echo $ip