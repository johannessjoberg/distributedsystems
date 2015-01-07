#!/bin/bash

port=63150
#loop through vessles
counter=1

    #send 3  messages to each vessle
for  i in 1 2 3
do
    while read line
    do
            echo "starting curl to ${line}"
            curl --silent --request POST $line:$port -d comment="messsage #${counter}"
            echo "done curling to ${line}"
            counter=$((counter+1))
    done < servers.txt
done

