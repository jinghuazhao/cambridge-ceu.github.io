#!/usr/bin/bash

module load ceuadmin/openssh/9.7p1-icelake

bundle exec jekyll build
git add .
git commit -m "pages"
git push
