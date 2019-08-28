#!/bin/bash

cd _book
git init
git remote add origin git@github.com:jensen5201/blog.git
git add .
git commit -m '[update] push from _book'
git push --force origin master:gh-pages