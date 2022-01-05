#!/usr/bin/bash

jekyll build
git add .
git commit -m "pages"
git push
