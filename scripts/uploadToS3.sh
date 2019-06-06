#!/bin/bash
set -x

oneDay="84600"
folder="$1"
bucket="$2"

find $folder -type f -exec gzip "{}" \; -exec mv "{}.gz" "{}" \;

aws s3 sync $folder s3://$bucket --exclude "*.*" --include "*.js" --include "*.css" --acl public-read --cache-control "max-age=$oneDay" --content-encoding "gzip"
