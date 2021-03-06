#!/bin/bash
# wikidaily install script
echo "installing scripts"

# create a directory for your new repo
mkdir -p wikidaily/docs/posts

cd wikidaily || exit

# get required scripts
curl "https://raw.githubusercontent.com/tg-z/wikidaily/main/wikidaily" -o wikidaily
curl "https://raw.githubusercontent.com/tg-z/wikidaily/main/index" -o index
curl "https://raw.githubusercontent.com/tg-z/wikidaily/main/docs/style.css" -o docs/style.css
curl "https://raw.githubusercontent.com/tg-z/wikidaily/main/readme.md" -o readme.md

# make executable
chmod +x wikidaily index

# install dependencies
echo "installing dependencies with brew"
brew install jq tree grep curl git

# create first files
echo "creating files"
./wikidaily --update
./wikidaily --index

# start tracking w git
git init
git add .

echo "install complete"
