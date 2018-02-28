#!/bin/bash
#file: guessinggame.sh

function test {
  if [[ $count -eq $1 ]]
  then
    echo "Your guess is CORRECT!!"
  elif [[ $count -gt $1 ]]
  then
    echo "Your guess is too low"
  else
    echo "Your guess is too high"
  fi
}

count=$(ls | wc -l)
num=0

while [[ $count -ne $ans ]]
do
  num+=1
  echo "Enter your guess for the number of files in this directory"
  read ans
  test $ans
done
