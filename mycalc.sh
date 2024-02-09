#!/bin/bash
# Filename : mycalc.sh
# Comments:
# This bash script is purpose to  perform two arithmetic operations, addition and subtraction.
# Use function to check if the user input correct parameters. If correct, display the addition or subtraction result of parameters.
# If not, display a usage message to make user understand the correct format.
#


# clear the screen
clear 

# add function calculates the sum
add() {
   (( sum = $1 + $2 ))  
   echo "Sum of $1 and $2 is " $sum
}

# subtract function calculates the difference
subtract() {
   (( difference = $1 - $2 ))  
   echo "Difference of $1 and $2 is " $difference
}

if [ $# -ne 3 ]
  then
  echo "Incorrect Number of Parameters"
  echo "Usage: mycalc 5 + 5"
  echo "Usage: mycalc 10 - 5"  
fi

 # check number of arguments at command line
if [ $# -eq 3 ] 
   then
   if [ $2 = '+' ]
   then 
      add $1 $3
   elif [ $2 = '-' ]
   then
      subtract $1 $3
   else 
      echo "Incorrect Operator" $2
      echo "+ to add"
      echo "- to subtract"
   fi
fi

# eof: mycalc.sh
