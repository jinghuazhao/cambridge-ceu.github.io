#!/usr/bin/bash

bundle exec jekyll build
git add .
git commit -m "pages"
git push
