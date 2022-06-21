#!/usr/bin/bash

bundle exec jekyll build
git add -f .
git commit -m "pages"
git push
