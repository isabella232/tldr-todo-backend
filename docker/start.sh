#!/bin/bash

# split MONGO_URL (host:port) into two
MONGO_PARTS=(${MONGO_URL//:/ })

# Default 60 seconds timeout
TIMEOUT=60

echo "Waiting for Mongo to become available. Will try for $TIMEOUT seconds."
count=0
until nc -z ${MONGO_PARTS[0]} ${MONGO_PARTS[1]} || [ "$count" == "$TIMEOUT" ]; do
    echo "$(date) - waiting for ${MONGO_PARTS[0]} and port ${MONGO_PARTS[1]}..."
    sleep 1
    count=$((count + 1))
done

# check if connection succeeded
if [ "$count" == "$TIMEOUT" ]; then
	echo "Aborting. Dependent service did not respond in time."
else
	echo "Starting service."
	/usr/local/bin/node /app/index.js
fi