#!/bin/bash
set -e
for dir in */ ; do
   cd $dir
   rake
   cd ..
done
