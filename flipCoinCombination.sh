#!/bin/bash
echo "FLIP COIN SIMULATION PUSH ON MASTER"
isHEAD=0
NUMBER_OF_COIN=3

declare -A tripletFlip


read -p "Enter the Number of Coin Flip : " numberOfCoinFlip

function triplet()
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
		((tripletFlip[$coinSide]++))
		coinSide=""
	done


function totalTripletPercentage()
{
   for index in ${!doubletFlip[@]}
   do
      tripletFlip[$index]=$(( ({tripletFlip[$index]}*100)/numberOfCoinFlip ))
   done

}

triplet

totalTripletPercentage
