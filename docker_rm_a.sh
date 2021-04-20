#!/bin/bash

cont_id_tab=`docker ps -a | grep -E "^(\S+)([a-z]+|[0-9]+)" | cut -c -12`

for cont in $cont_id_tab
do
	docker rm -f $cont
done