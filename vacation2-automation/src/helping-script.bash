#!/bin/bash


#
#echo -n "["
#echo -n "1 "
#
#for i in {4..64..2}
#
#do
#
#	echo -n "$i "
#
#done
#
#
#echo  "]"


# awk '/total/ {print}'  ./test-outputs/output-v2-vacation2.txt

# this is working for time
#awk '/time/ {print $(NF - 1)}'  ./test-outputs/output-v2-vacation2.txt

# awk '/time/ {print $(NF - 1) ","}'  ./test-outputs/output-v2-vacation2.txt >./timesFile.txt

#gtimefile(){
#  echo "Please write the experiment output file name"
#  read output_name
#
#  echo "Please provide a name for the new file"
#  read new_file
#
#  echo "Writing output file now..."
#  awk '/time/ {print $(NF - 1) ","}'  ./${output_name}.txt >./time-stamps/${new_file}.txt
#  echo "Output file created!"
#  echo "Program finished"
#}
#gtimefile




for f in experiment-outputs/*;
  do
        mawk '/time/ {print $(NF - 1) ","}' ${f} >> "time-stamps/${f}-time-stamps.txt"

done
