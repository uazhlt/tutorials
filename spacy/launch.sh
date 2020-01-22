#!/usr/bin/env bash

docker run --rm -it -d \
  -p 7777:9999 \
  -v "${PWD}/notebooks:/app/notebooks" \
  uazhlt/spacy-demo:latest sh scripts/launch-notebook.sh

# Open your browser to http://localhost:7777/tree/notebooks
