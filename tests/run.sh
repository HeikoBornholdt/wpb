#!/bin/sh
pass() {
  echo "PASS: $1"
}

fail() {
  echo "FAIL: $1" 
  exit 1
}

file_should_exist() {
  if [ -f $1 ]; then
    pass "$1 exists (and is a file)"
  else
    fail "$1 does not exist (or isn't a file)"
  fi
}

file_should_exist_in_archive() {
  if [ "`tar tf \"$1\" | grep \"$2\"`" != "" ]; then
    pass "$2 exists in $1"
  else
    fail "$2 does not exists in $1"
  fi 
}

## main program

sh -c "./wpb ./tests/com.example.test/"

ARCHIVE="com.example.test.tar"

file_should_exist "$ARCHIVE"
file_should_exist_in_archive "$ARCHIVE" "package.xml"
file_should_exist_in_archive "$ARCHIVE" "files.tar"

rm -rf "$ARCHIVE"
