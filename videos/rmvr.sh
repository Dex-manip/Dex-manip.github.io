#!/bin/bash

find . -type f -name "*_cropped*" | while read -r file; do
    dir=$(dirname -- "$file")
    base=$(basename -- "$file")
    newname="${base//_cropped/}"
    if [ "$base" != "$newname" ]; then
        mv "$file" "$dir/$newname"
        echo "Renamed: $file -> $dir/$newname"
    fi
done
