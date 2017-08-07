#!/bin/bash

#ENV Variables expected
# TARGET_URL                  - the url to perform requests to
# NUM_OF_CONSECUTIVE_REQUESTS - the number of consecutive requests to perform before sleeping
# SLEEP_TIME                  - time to sleep before a burst of requests

while true
do
	echo "Performing ${NUM_OF_CONSECUTIVE_REQUESTS} http requests to '${TARGET_URL}'"
	for ((i=1;i<=NUM_OF_CONSECUTIVE_REQUESTS;i++));
	do
		echo `curl ${TARGET_URL} | grep "Page views"`
	done
	echo sleeping ${SLEEP_TIME}
	sleep ${SLEEP_TIME}
done
