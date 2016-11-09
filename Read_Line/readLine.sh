#!/bin/sh
# ip包含引号，这里也不会输出引号
eval `cat ./readline`
IP=$ip
echo $IP