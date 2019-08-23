#!/bin/sh
# Detect the script location, so it doesn't need to be run from a specific folder to work.

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

cd "${DIR}"

# result=${DIR##*/}

# shopt -s extglob
# rm -rv !("dist"|"git-release.sh")

# if [[ $packagejson == *"@ng-idle/core"* ]]; then
#   # `cp -r ./dist/core/ ./`
# fi

# if [[ $packagejson == *"@ng-idle/keepalive"* ]]; then
#   # `cp -r ./dist/keepalive/ ./`
# fi

echo ${DIR} > temp

# rm -r dist
