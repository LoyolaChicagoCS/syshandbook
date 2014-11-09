#!/bin/bash

echo "<<< $(date) >>>"
echo
git fetch && git log ..origin/master && git pull && ./deploy-syshandbook.sh
echo
