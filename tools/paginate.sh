#!/usr/bin/bash

export page_size=5
export pages=$(expr $(ls | wc -l) / ${page_size} + 1)

for p in `seq 1 ${pages}`
do
  if [ ! -d page${p} ]; then mkdir page${p}; fi
  rm -f page${p}/*
done
ls | \
grep -v page | \
awk -v page_size=${page_size} '
BEGIN{p=1}
{
  print "page" p " <- record:" NR ", post:" $0
  cmd=sprintf("cp -p \"%s\" page%d",$0,p)
  system(cmd)
  if(!(NR % page_size)) p++
}'
