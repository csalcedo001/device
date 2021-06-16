#!/bin/bash

NAME=$1

if ! $(echo "$(docker ps -a --format "{{.Names}}")" | grep -w -q $NAME) ; then
	docker run -it --name $NAME ubuntu:latest
elif [[ "$(docker ps -q -f name=$NAME)" == "" ]] ; then
	docker start -i $NAME
else
	docker exec -it $NAME bash
fi
