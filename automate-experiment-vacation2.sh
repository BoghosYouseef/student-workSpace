#!/bin/sh

# This script is to automate the vacation2 program 
# git repository:
# https://github.com/jswalens/vacation2


# this script is written by: boghos youseef 
# last modified: 4/11/2021


echo "Starting Automation Script..."
cd  /home/messy/Workspace-boghos-youseef/vacation2


# this is the benchmark version with transacional actors
#lein run -- -vtxact -w 4 -s 8 -t 30 -n 300

# this is the original version of the benchmark
#
#lein run -- -v original -w 4 -s 8 -t 30 -n 300

# Paramteres defintion:
# -v either orginal or txact.
# -w the number of primary worker actors.
# -s the number of secondary worker actors. (this is only available for txact version)
# -t the numver of reservations.
# -n number of queries per relation per reservation.
# -r number of flights/rooms/cars.
# -p work factor for password generation.
# -d prnt debug information

Version=txact
primary_worker_actors=10
secondary_worker_actors=20
num_reservations=30
num_queries=300

echo "currently running Bash ${BASH_VERSION}"

echo "Running the script with the following options:  -v ${Version} -w ${primary_worker_actors} -s ${secondary_worker_actors} -t ${num_reservations} -n ${num_queries}"

output=$(lein run -- -v ${Version} -w ${primary_worker_actors} -s ${secondary_worker_actors} -t ${num_reservations} -n ${num_queries}) > log1




echo "shell program done!"
echo "-----------------------"
# echo ${output: -11: -2}
#echo ${output} | sed -n "\([0-9]\{20\}\.[0-9]\{3\}\)"


echo "-----------------------"
