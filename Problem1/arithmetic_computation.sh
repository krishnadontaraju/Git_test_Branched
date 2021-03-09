#!/bin/bash
read -p "What is the first number you want to give" first_number_a
read -p "What is the second number you want to give" second_number_b
read -p "Wha ti s the third number you want to to give" third_number_c
first_computation=$(( first_number_a + second_number_b * third_number_c ))
echo $first_computation
second_computation=$(( first_number_a * second_number_b + third_number_c ))
echo $second_computation
