#!/bin/bash

	date
	echo "Checking newer image on the server"

	pullResult=$(docker pull ademch/optimaaztec | grep "Downloaded newer image")

	if [ -n "$pullResult" ]; then
		echo $pullResult
		echo "Newer image downloaded"
		echo "Restarting srv1:"
		echo "	sending SIGINT to srv1"
		docker kill --signal=SIGINT srv1
		echo "	waiting for server to terminate"
		docker wait srv1
		echo "starting new server"
		docker run --name srv1 --rm -d ademch/optimaaztec
		echo "Done"
	else
		echo "Image is up to date"
	fi

