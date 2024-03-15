#!/bin/bash

echo "Hello World"

echo $PRINTTEXT

if [[ -z "${RUNENV}" ]]; then
  RUNENV="KEINE RUNTIME VARIABLE"
fi
echo $RUNENV
