#!/bin/sh

VALUE_TO_BE_CONVERTED=$1
TARGET=$2

tail -1 "src/databases/$TARGET.csv" | grep ';..\...' -o | tr -d ';' | {
  read value
  echo $value
}
