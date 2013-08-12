#!/bin/bash

echo "<<< $(date) >>>"
echo
hg incoming && hg pull && hg update --clean && ./deploy-syshandbook.sh
echo
