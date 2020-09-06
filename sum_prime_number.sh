#!/bin/bash
#输入范围，计算范围内质数之和
echo -n "请输入质数范围："
read  n
if grep '^[[:digit:]]*$' <<< "$n"
then
	if [ $n -le 0 ]
	then
		echo "输入数字小于等于0"
		exit
	fi
else
	echo "输入内容非数字"
	exit
fi
int=2
sum=0
c=1
while((int<=n))
do
	j=2
	while(($j<=int))
	do
		if [ $[$int%$j] -eq 0 ]
		then
			break
		fi
		let j++
	done
	if [ $int -eq $j ]
	then
		echo "第$c个质数：$int"
		let c++
		let sum+=int
	fi
	let int++
done
echo "1到$n范围内质数之和为:$sum"

