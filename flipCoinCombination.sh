#!/bin/bash
echo "FLIP COIN SIMULATION PUSH ON MASTER"
isHEAD=0
NUMBER_OF_COIN=2


declare -A doubletFlip


read -p "Enter the Number of Coin Flip : " numberOfCoinFlip
function doublet()
{
   for(( count=0; count<$numberOfCoinFlip; count++ ))
   do
      for(( countCoin=0; countCoin<$NUMBER_OF_COIN; countCoin++ ))
      do
         flipCoin=$(( RANDOM%2 ))

         if [ $FlipCoin -eq $isHEAD ]
         then
            coinSide+=H
         else
            coinSide+=T
         fi
		done
		((doubletFlip[$coinSide]++))
		coinSide=""
	done

function totalDoubletPercentage()
{
   for index in ${!doubletFlip[@]}
   do
      doubletFlip[$index]=$(( ({doubletFlip[$index]}*100)/numberOfCoinFlip ))
   done

}


doublet
totalDoubletPercentage
