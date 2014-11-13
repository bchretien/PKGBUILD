#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Remove src and pkg directories
for dir in $(find . -maxdepth 2 -mindepth 2 -type d \
             -regextype sed -regex ".*/\(src\|pkg\)")
do
  rm -rf $dir
done

# Remove downloaded directories (if any)
for dir in $(find . -maxdepth 2 -mindepth 2 -type d \
             -regextype sed -regex ".*\([a-z\-]\+\)/\1")
do
  rm -rf $dir
done

# Remove generated packages
for f in $(find $DIR -maxdepth 2 -mindepth 2 -type f \
           -name "*.pkg.tar.xz" -or -name "*.src.tar.gz")
do
  rm $f
done
