#!/bin/bash

[ -f ~/.env/sphinx/bin/activate ] && . ~/.env/sphinx/bin/activate

make html
make latexpdf
make epub

./rsync-syshandbook.sh


