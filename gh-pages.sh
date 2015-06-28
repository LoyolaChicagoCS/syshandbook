#!/bin/bash

git checkout gh-pages
rm -rf build
git checkout master source Makefile build-handbook.sh
git reset HEAD
./build-handbook.sh
mv -fv build/html/* ./
mkdir -p download
mv -fv build/latex/*.pdf ./download/
mv -fv build/epub/*.epub ./download/
# rm -rf build
touch .nojekyll
git add -A
git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && git push origin gh-pages
