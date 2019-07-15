#!/bin/bash

EMAIL_DIR=/emails/
IN_EXT="${IN_EXT:-mjml}"
EMAIL_FILES="$EMAIL_DIR/*.$IN_EXT"
OUT_EXT="${OUT_EXT:-tt2}"

for file in $EMAIL_FILES
do
  mjml -r "$file" -o $(echo "$file" | sed "s/${IN_EXT}$/$OUT_EXT/")
done
