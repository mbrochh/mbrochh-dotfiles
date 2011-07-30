#!/bin/sh
# Seriously. Who can ever memorize this bloody command...
#
# Usage:
#
# search.sh "*.py" "searchterm"

find . -name "$1" -exec grep -i -H -n "$2" {} \;
