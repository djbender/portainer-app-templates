#!/usr/bin/env bash

set -exu

# no intermediate files
jq --slurp '.[0] + .[1]' \
  < <(curl --silent https://raw.githubusercontent.com/portainer/templates/master/templates-2.0.json) \
  < <(curl --silent https://raw.githubusercontent.com/Qballjos/portainer_templates/master/Template/template.json) \
  | tee >(jq) templates.json
