#!/bin/sh

# https://atcoder.jp/contests/hokudai-hitachi2020/tasks/hokudai_hitachi2020_a

#コンパイル
g++ -Isrc -std=c++17 -O2 src/sample_A.cpp -o sample_A

# コードの説明など
# read -p "コードの説明などを入力" STR
# echo $STR >> result.txt

# テストケース実行
# テストケース数は適宜変えて
for var in 1 2 3 4 
do
	./judge_A ./sample_A < test_case${var}.txt > out${var}.txt 
	TEST=$(<out${var}.txt)
	echo "test_case"${var}" : $TEST"
done