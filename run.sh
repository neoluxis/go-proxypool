#!/bin/bash

if [ -e ~/proxypool ]; then
	# Cloud version
	echo "Using cloud verion de config"
	cd ~/proxypool -v
	echo "Syncing from git repo"
	git fetch
	git pull
	./proxypool -c config/config.yaml
else
	# local version
	echo "Using local verion de config"
	cd ~/app/go-proxypool -v
	echo "Syncing from git repo"
	git fetch
	git pull
	./proxypool -c config/config.local.yaml
fi

