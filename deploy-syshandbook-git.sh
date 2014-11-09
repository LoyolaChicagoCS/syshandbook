#!/bin/bash

(git pull | head -1 | grep -v ^Already) \
	&& echo "Deploy event at $(date)" \
	&& ./deploy-syshandbook.sh
