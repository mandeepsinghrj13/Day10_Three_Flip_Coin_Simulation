#!/bin/bash
echo "FLIP COIN SIMULATION PUSH ON MASTER"
HEAD=0

flipCoin=$((RANDOM%2))
if [ $flipCoin == $HEAD ]
then
	echo "Head"
else
	echo "Tail"
