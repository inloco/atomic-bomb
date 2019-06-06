#!/bin/bash
set -x

distribution="$1"

aws cloudfront create-invalidation --distribution-id $distribution --paths "/*" --debug