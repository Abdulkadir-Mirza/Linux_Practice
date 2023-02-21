#!/bin/bash


read -p "Enter Num 1:" num1
read -p "Enter Num 2:" num2

echo "Sum of $num1 and $num2 is $((num1 + num2))"
echo "Sub of $num1 and $num2 is $((num1 - num2))"
echo "Mul of $num1 and $num2 is $((num1 * num2))"
echo "Div of $num1 and $num2 is $((num1 / num2))"
echo "Rem of $num1 and $num2 is $((num1 % num2))"
echo "Pow of $num1 and $num2 is $((num1 ** num2))"
