#!/bin/bash

if [ -z $PLUGIN_PROJECT ]; then
    echo "Specify a project!"
    exit 1
fi

if [ -z $PLUGIN_VERSION ]; then
    echo "Specify a version!"
    exit 1
fi

if [ -z $GOOGLE_CREDENTIALS ]; then
    echo "No credentials provided!"
    exit 1
fi

echo $GOOGLE_CREDENTIALS > /credentials.json

gcloud auth activate-service-account --key-file=/credentials.json

if [ -z $PLUGIN_APP_FILE ]; then
  gcloud app deploy --project $PLUGIN_PROJECT --version $PLUGIN_VERSION --quiet
else
  gcloud app deploy $PLUGIN_APP_FILE --project $PLUGIN_PROJECT --version $PLUGIN_VERSION --quiet
fi
