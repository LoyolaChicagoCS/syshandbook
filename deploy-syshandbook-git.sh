#!/bin/bash

(git pull | head -1 | grep -v ^Already) && ./deploy-syshandbook.sh
