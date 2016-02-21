#!/usr/bin/env bash


function __replace_in_file_linux {
  sed -i.bak "s/^\($1\s*=\s*\).*\$/\1$2/" "$3"
}


function __delete_line_linux {
  sed -i.bak "/$1/d" "$2"
}


function __temp_file_linux {
  local filename=$(mktemp)
  echo "$filename"
}
