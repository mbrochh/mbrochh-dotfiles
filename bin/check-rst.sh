#!/bin/sh
# Checks for syntax errors in rst files.
python $1 --long-description | rst2html.py > /dev/null
