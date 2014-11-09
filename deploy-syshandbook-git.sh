#!/bin/bash

echo "Deploy event at $(date)"
(git pull | head -1 | grep -v ^Already) && ./deploy-syshandbook.sh
