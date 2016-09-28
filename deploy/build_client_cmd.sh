#!/bin/bash
set -e
cd /code/client
npm install
jspm install -y
export no_proxy=localhost
xvfb-run gulp test
gulp export
