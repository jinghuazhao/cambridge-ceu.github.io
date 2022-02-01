#!/usr/bin/bash
# Usage: title-contents-notes.sh "my title" "my post" "my notes"

export title_of_post=$1
export contents_of_post=$2
export notes_of_post=$3
export name_of_post=$(date "+%F-${title_of_post}.md" | sed 's/ /-/g')

echo ${title_of_post}
echo ${contents_of_post}
echo ${name_of_post}

cd _posts

(
  echo ---
  echo layout: page
  echo title:  "${title_of_post}"
  echo date:   `date "+%F %Z %T +%N"`
  echo header:
  echo    image_fullwidth: "header-bus.jpg"

  echo ---
  echo
  echo ${contents_of_post}
  echo
  echo "<!--more-->"
  echo
  echo ---
  echo
  echo "## NOTES"
  echo
  if [ "${notes_of_post}" == "" ]; then
  echo A post is a file YYYY-MM-DD-title_of_post.ext in _posts with the required front matter.
  else
  echo ${notes_of_post}
  fi

) > ${name_of_post}

cd -
