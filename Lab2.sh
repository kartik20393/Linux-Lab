#!/bin/bash
read -p "Enter a number: " number; reverse=0; original=$number
while [ $number -ne 0 ]; do
    reverse=$(( reverse * 10 + number % 10 )); 
    number=$(( number / 10 ))
done
[[ $original -eq $reverse ]] && echo "$original is a palindrome." || echo "$original is not a palindrome."
