#!/bin/bash

git config --global user.email "gkt@cs.luc.edu"
git config --global user.name "George K. Thiruvathukal"
git remote add deploy "https://$GH_TOKEN@github.com/$GH_USER/$GH_REPO.git"
git fetch deploy
git reset deploy/gh-pages
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
git remote -v
echo "Pushing to deploy HEAD:gh-pages"
git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && git push deploy HEAD:gh-pages
echo "Done"

