#!/bin/bash
set -ex
tags="centos6 centos7"

for t in ${tags}; do
  docker build -t italiangrid/pkg.storm-client:${t} -f Dockerfile-${t} .
done
