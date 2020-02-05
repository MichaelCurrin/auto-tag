#!/bin/bash

USAGE='USAGE: ./autotag.sh INCREMENT [-p] [-h]
Position arguments:
    INCREMENT   : One of M|m|b for major, minor or bug.

Flags:
    -h --help   : Show help and exit.
    -p --preview: Preview new tag version but do not actually tag it.
'

if [[ "$#" -eq 0 ]] || [[ "$1" == '-h' ]] || [[ "$1" == '--help' ]]; then
    echo "$USAGE"
    exit 1
fi
INCREMENT_CHOICE=$1

if [[ "$2" ]]; then
    if [[ "$2" == '-p' ]] || [[ "$2" == '--preview' ]]; then
        PREVIEW=true
    else
        echo 'Invalid arguments'
        echo
        echo "$USAGE"
    fi
    PREVIEW=false
fi

echo 'Auto tagging...'

LAST_TAG=$(git describe --abbrev=0 --tags 2>/dev/null)
LAST_TAG=${LAST_TAG:-'v0.0.0'}
LAST_TAG="${LAST_TAG/v/}"

# Replace dot with space then split into array.
LAST_TAG_ARR=(${LAST_TAG//./ })

MAJOR=${LAST_TAG_ARR[0]}
MINOR=${LAST_TAG_ARR[1]}
BUG=${LAST_TAG_ARR[2]}

echo "Last tag: v$MAJOR.$MINOR.$BUG"

case $INCREMENT_CHOICE in
"M")
    ((MAJOR += 1))
    MINOR=0
    BUG=0
    ;;
"m")
    ((MINOR += 1))
    BUG=0
    ;;
"b")
    ((BUG += 1))
    ;;
*)
    echo "Bad arguments!"
    echo
    echo "$USAGE"
    exit 1
    ;;
esac

NEW_TAG="v$MAJOR.$MINOR.$BUG"
echo "New tag: $NEW_TAG"

if [[ "$PREVIEW" ]]; then
    echo 'Skipping tag creation'
else
    echo "Creating annotated tag..."
    git tag -a $NEW_TAG -m $NEW_TAG
fi
