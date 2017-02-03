#!/bin/bash
for i in {1..6}; do
	./sclp -ast -tokens testcases/test$i.c
	./sclp16 -ast -tokens testcases16/test$i.c
done
echo "-----------------------ASSSSSSSSTTTTTTTTTTTTTTTTTTTT=========="
# for i in {1..6}; do
# 	echo "TEST " $i
# 	diff testcases/test$i.c.ast testcases16/test$i.c.ast
# done
echo "--------------------TOKENSSSSSSSSSSSS=========="
for i in {3..4}; do
	echo "TEST " $i
	diff testcases/test$i.c.toks testcases16/test$i.c.toks
done
# echo "--------------------SPIM=========="
# for i in {1..6}; do
# 	echo "TEST " $i
# 	diff testcases/test$i.c.spim testcases16/test$i.c.spim
# done
