#!/bin/bash

git config --global user.email "gkt@cs.luc.edu"
git config --global user.name "George K. Thiruvathukal"
git remote add deploy "https://$GH_TOKEN@github.com/$GH_USER/$GH_REPO.git"
git fetch deploy
git reset deploy/gh-pages
git checkout master source Makefile build.sh
rm -rf build
./build.sh
if [ $? -eq 0 ]
then
  mkdir -p download
  mv -f build/html/* ./
  mv -f build/latex/*.pdf ./download/
  mv -f build/epub/*.epub ./download/
  touch .nojekyll
  git log master > COMMITS
  git add -A
  git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && git push deploy HEAD:gh-pages
else
  echo "Sphinx build failed. gh-pages not altered."
fi

