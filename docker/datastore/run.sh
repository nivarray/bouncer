#!/bin/sh
#used to run the emulator

set -e #if any commands fail, immediately stops executing bash script

#Checks if DATASTORE_PROJECT_ID is not empty, otherwise it'll print an exit message
if [[ -z "${DATASTORE_PROJECT_ID}" ]]; then
    echo "Missing DATASTORE_PROJECT_ID environment variable" >&2
    exit 1
fi

#Configure project
gcloud config set project ${DATASTORE_PROJECT_ID}

#Start emulator
gcloud beta emulators datastore start \
    --consistency=1.0 \
    --host-port=0.0.0.0:8001 \
    --quiet \
    --data-dir /data