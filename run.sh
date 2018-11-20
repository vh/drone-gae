#!/bin/bash

if [ -z "$PLUGIN_PROJECT" ]; then
    echo "Specify a project!"
    exit 1
fi

if [ -z "$GOOGLE_CREDENTIALS" ]; then
    echo "No credentials provided!"
    exit 1
fi

echo "$GOOGLE_CREDENTIALS" > /credentials.json

gcloud auth activate-service-account --key-file=/credentials.json

if [ -n "$PLUGIN_APP_FILE" ]; then
  CMD="gcloud app deploy $PLUGIN_APP_FILE -q --project $PLUGIN_PROJECT"
else
  CMD="gcloud app deploy -q --project $PLUGIN_PROJECT"
fi

if [ -n "$PLUGIN_VERSION" ]; then
  CMD="$CMD --version $PLUGIN_VERSION"
fi

eval $CMD
