#!/bin/sh

jekyll build && s3cmd --delete-removed --acl-public --reduced-redundancy sync _site/ s3://www.nathankerr.com/
