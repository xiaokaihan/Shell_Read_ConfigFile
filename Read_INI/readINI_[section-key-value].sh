#!/bin/sh
# __readINI [配置文件路径+名称] [节点名] [键值]
function __readINI(){
	INIFILE=$1; SECTION=$2; ITEM=$3
	_readIni=`awk -F '=' '/\['$SECTION'\]/{a=1}a==1&&$1~/'$ITEM'/{print $2;exit}' $INIFILE`
	echo ${_readIni}
}

IP=($(__readINI readIni.ini IP ip))

echo "$IP"