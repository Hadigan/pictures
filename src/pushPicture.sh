#!/bin/bash
if [ "$#" -eq "0" ];then
	echo "Usage:至少需要一个指向图片路径的参数"
	exit
fi    
m=$1
echo "总共需要上传$#张图片"
echo " "
echo "生成的图片链接："
echo " "
count=1
while [ "$#" -ge "1" ];do
	cp ./$1 /Users/hadigan/workspaces/pictures/
	echo "https://raw.githubusercontent.com/Hadigan/pictures/master/$1"
	echo " "
	let count=count+1
	shift
done
echo "-------------------------------------------------"
echo "-------------------------------------------------"
cd /Users/hadigan/workspaces/pictures/
git add --all && git commit -m "$m" && git push


