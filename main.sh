#!/bin/bash

count=$1 
length=$2
read str

strSize=${#str}
count=$((count-1))

gen=""
z=""

if [[ (($count < 1)) ]]; then
echo "Invalid input: count should be greater than 1"
exit 
fi

if [[ (($length < 1)) ]]; then
echo "Invalid input: length should be greater than 0"
exit 
fi

if [[ (($strSize == 1)) && (($count -lt $length)) ]]; then
  for((i=1; i<=count; i++)) 
  do 
    gen+="${str}"
  done
  echo "$gen"
  echo "Add a distinct alphabet in input file"
  exit
fi

while [[ ${#gen} -lt $length ]]
do
  num1=$(( $RANDOM % $strSize ))
  num2=$(( 1 + $RANDOM % $count ))    
  
  y=$(( $length - ${#gen} ))
  if [ $num2 -gt $y ]; then 
  continue;
  fi 

  x=${str:$num1:1}

  if [[ (($x == $z)) && (($num2+$k -gt $count)) ]]; then
  continue;
  else
    if [[ (($x == $z)) ]]; then
    k=$(($num2 + $k))
    fi
  fi
  
  if [[ (($x != $z)) ]]; then
  k=$num2
  fi
  z=$x

  for((i=1; i<=num2; i++)) 
  do 
    gen+="${x}"
  done
  
done

echo "$gen"
