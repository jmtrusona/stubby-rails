#!/usr/bin/env bash

echo "stubbing the bundle functionality"

if [ "$1" == "exec" ] && [ "$2" == "rake" ] && [ "$3" == "db:migrate" ]; then
  echo "performed db:migrate"
  exit 0
fi
