#!/bin/bash
set -e

branches=$(git branch --contains)

for branch in ${branches}; do
    if [ "$branch" = "$target_branch" ]; then exit 0; fi
done

echo "Not merged in $target_branch !"
exit 1
