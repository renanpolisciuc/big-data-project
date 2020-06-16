#!/bin/bash

/sbin/tini -- /usr/local/bin/jenkins.sh &

./ngrok authtoken $NGROK_AUTH_TOKEN

./ngrok http 8080
