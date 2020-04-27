#!/bin/sh

set -e

version="$1"
if [ -z "$version" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

if [ "${version:0:1}" = "v" ]; then
  version="${version:1:100}"
fi

if git tag --list | grep "v$version" >/dev/null; then
  echo "Version $version already exists"
  exit 1
fi

ised() {
  sed -e "$1" "$2" > "$2.new"
  mv -- "$2.new" "$2"
}

ised "s|version: ~> .*$|version: ~> $version|" README.md
ised "s|version: .*$|version: $version|" shard.yml
ised "s|VERSION\(.*\)= .*$|VERSION\1= \"$version\"|" src/gobject.cr

git commit -pm "Release v$version"
git tag "v$version"
git push origin master "+v$version"