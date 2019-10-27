#!/bin/bash

mkdir -p /app
cd /app

if [ -d "/app/.git" ]
then
	git pull
elif [ ! -z "$GIT_REPO" ]
then
	git clone "$GIT_REPO" /app
fi

if [ -f "/app/requirements.txt" ]
then
	pip3 install -r /app/requirements.txt
fi

if [ ! -z "$APP_ENTRYPOINT" ]
then
	python3 -u "$APP_ENTRYPOINT"
else
	echo "Please specify APP_ENTRYPOINT"
fi