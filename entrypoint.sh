#!/bin/bash

mkdir -p /app

if [ ! -z "$GIT_REPO" ]
then
	git pull "$GIT_REPO" /app
fi

if [ -f "/app/requirements.txt" ]
then
	pip3 install -r /app/requirements.txt
fi

if [ ! -z "$APP_ENTRYPOINT" ]
then
	cd /app
	python3 -u "$APP_ENTRYPOINT"
else
	echo "Please specify APP_ENTRYPOINT"
fi