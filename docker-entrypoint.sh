#!/bin/bash
if [ ! -f "/service-account.json" ]; then
  echo "Ensure that you have mounted your Json as /service-account.json"
  exit 1
fi

gcloud auth activate-service-account --key-file=/service-account.json

"$@"
