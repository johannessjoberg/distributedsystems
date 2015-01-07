#!/bin/bash

port=$1
#loop through vessles
counter=1

#send 3  messages to each vessle

while read line
do
    for  i in 1 2 3
    do
            curl --silent --request POST $line:$port -d comment="messsage number ${counter}"
            counter=$((counter+1))

    done
done < servers.txt

