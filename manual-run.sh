#! /bin/bash

# https://docs.github.com/en/rest/repos/repos#create-a-repository-dispatch-event

. .env

curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token $GITHUB_PAT" \
  https://api.github.com/repos/jimpick/sp-kyc-prototyping/dispatches \
  -d '{"event_type":"manual-run"}'
