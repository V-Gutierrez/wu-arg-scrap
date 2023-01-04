#!/bin/sh

TARGET=$2

tail -1 "src/databases/$TARGET.csv" | grep ';..\...' -o | tr -d ';' | {
  read value
  echo $value
}
