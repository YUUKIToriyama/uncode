#!/bin/bash
# Uncode (Cipher machine using 💩💩︎)
#
# (C) Copyright 2019 YUUKIToriyama All Rights Reserved.


# 環境設定
a=$(echo -ne '\U1F4A9')
b=$(echo -ne '\U1F4A9\UFE0E' )

# 第一引数に「-d」を指定するとデコードモードになり、第二引数に与えられたuncodeをデコードします
if [[ $1 == "-d" ]]; then
	echo $2 | sed "s/$b/1/g;s/$a/0/g;s/^/obase=16;ibase=2;/g" | bc \
		| tr -d '\\\n' \
		| xxd -r -p 
# 第一引数に「-h」を指定するとヘルプファイルを表示します
elif [[ $1 == "-h" ]]; then
	cat README.md
# オプションを指定しない場合は第一引数に与えられた文字列をuncodeにエンコードします
else
	#echo $1
	echo $1 | xxd -p -u | sed 's/^/obase=2;ibase=16;/g' | bc \
		| tr -d '\\\n' \
		| sed "s/1/$b/g;s/0/$a/g"
fi
