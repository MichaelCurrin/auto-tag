#!/bin/bash

USAGE="USAGE: autotag.sh\n
Arguments:
    INCREMENT: One of M|m|b for major, minor or bug.
"

if [[ "$#" -eq 0 ]]; then
    echo -e $USAGE
    exit 1
fi

echo 'Auto tagging...'

LAST_TAG=$(git describe --abbrev=0 --tags 2>/dev/null)
LAST_TAG=${VERSION:-'v0.0.0'}
LAST_TAG="${LAST_TAG/v/}"

# Replace dot with space then split into array.
LAST_TAG_ARR=(${LAST_TAG//./ })

MAJOR=${LAST_TAG_ARR[0]}
MINOR=${LAST_TAG_ARR[1]}
BUG=${LAST_TAG_ARR[2]}

echo "Last Tag: v$MAJOR.$MINOR.$BUG"

case $1 in
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
    echo -e $USAGE
    exit 1
    ;;
esac

NEW_TAG="v$MAJOR.$MINOR.$BUG"
echo "New Tag: $NEW_TAG"
