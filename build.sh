#!/usr/bin/env bash

set -exu

jq -s '{version: "2", templates: (.[0].templates + .[1].templates)}' < <(curl --silent https://raw.githubusercontent.com/portainer/templates/master/templates-2.0.json https://raw.githubusercontent.com/Qballjos/portainer_templates/master/Template/template.json)  \
  | tee >(jq) > templates.json
