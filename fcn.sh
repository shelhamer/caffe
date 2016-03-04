#!/bin/bash
git checkout master
git branch -D fcn
git checkout -b fcn
## merge PRs
# crop layer
hub merge https://github.com/BVLC/caffe/pull/3570
# coord map
hub merge https://github.com/BVLC/caffe/pull/3613
# share conv buffers to reduce memory
hub merge https://github.com/BVLC/caffe/pull/2016
## commit
git add fcn.sh
git add README.md
git commit -m 'add README + creation script'
