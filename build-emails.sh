#!/bin/bash

emaildir=/emails/
emailfiles="$emaildir/*.mjml"

for file in $emailfiles
do
  mjml -r "$file" -o $(echo "$file" | sed 's/mjml$/tt2/')
done
