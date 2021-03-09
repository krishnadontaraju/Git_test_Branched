#!/bin/bash -x

declare -A storage_dict
declare -a storage_array
read -p "What is the first number you want to give" first_number_a
read -p "What is the second number you want to give" second_number_b
read -p "What is the third number you want to to give" third_number_c

storage_dict[0]=$(( first_number_a + second_number_b * third_number_c ))
storage_dict[1]=$(( first_number_a * second_number_b + third_number_c ))
storage_dict[2]=$(( third_number_c + first_number_a / second_number_b ))
storage_dict[3]=$(( first_number_a % second_number_b + third_number_c ))

for i in ${!storage_dict[@]}
do
	storage_array[$i]=${storage_dict[$i]}
done


for((first_counter=${#storage_array[@]}-1;first_counter>=0; first_counter--));
       do

              for((second_counter=1;second_counter<=$first_counter; second_counter++));
	                do
        	                if [[ ${storage_array[second_counter-1]} -lt ${storage_array[second_counter]} ]];
                	        then
                        	        temporary_storage=${storage_array[second_counter-1]}
                                	storage_array[second_counter - 1]=${storage_array[second_counter]}
                                	storage_array[second_counter]=$temporary_storage
                        fi
                done
        done



echo ${storage_array[@]}


