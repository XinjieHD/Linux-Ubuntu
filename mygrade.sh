#!/bin/bash
# File name: mygrade.sh
# Comments:
# This bash script is purpose to convert numerical grade into letter grade.
# Make users input their assignment/test1/test2/final_exam grades, then get their letter grade.
#
#

# clear the screen
clear 

# prompt user for inputs and store in variables
echo "Enter Assignment mark (0 - 40): "
read assignment
echo "Enter Test 1 mark (0 - 15): "
read test1
echo "Enter Test 2 mark (0 - 15): "
read test2
echo "Enter Final exam mark (0 - 30): "
read final_exam

# calculate final numeric grade
numeric_grade=$((assignment + test1 + test2 + final_exam))

# convert numeric grade into letter grade
if [ "$numeric_grade" -ge 90 ] && [ "$numeric_grade" -le 100 ]; then
  letter_grade="A+"
elif [ "$numeric_grade" -ge 85 ] && [ "$numeric_grade" -le 89 ]; then
  letter_grade="A"
elif [ "$numeric_grade" -ge 80 ] && [ "$numeric_grade" -le 84 ]; then
  letter_grade="A-"
elif [ "$numeric_grade" -ge 77 ] && [ "$numeric_grade" -le 79 ]; then
  letter_grade="B+"
elif [ "$numeric_grade" -ge 73 ] && [ "$numeric_grade" -le 76 ]; then
  letter_grade="B"
elif [ "$numeric_grade" -ge 70 ] && [ "$numeric_grade" -le 72 ]; then
  letter_grade="B-"
elif [ "$numeric_grade" -ge 67 ] && [ "$numeric_grade" -le 69 ]; then
  letter_grade="C+"
elif [ "$numeric_grade" -ge 63 ] && [ "$numeric_grade" -le 66 ]; then
  letter_grade="C"
elif [ "$numeric_grade" -ge 60 ] && [ "$numeric_grade" -le 62 ]; then
  letter_grade="C-"
elif [ "$numeric_grade" -ge 57 ] && [ "$numeric_grade" -le 59 ]; then
  letter_grade="D+"
elif [ "$numeric_grade" -ge 53 ] && [ "$numeric_grade" -le 56 ]; then
  letter_grade="D"
elif [ "$numeric_grade" -ge 50 ] && [ "$numeric_grade" -le 52 ]; then
  letter_grade="D-"
else
  letter_grade="F"
fi

# display the results
echo "Your final numeric grade is $numeric_grade, and your final letter grade is $letter_grade"


#end of this code
