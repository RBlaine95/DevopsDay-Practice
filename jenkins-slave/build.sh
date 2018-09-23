#!/bin/bash
set -e
# Set namespace
namespace=`oc project --short`
registry="docker-registry-default.apps.zenaptix.net"

docker build -t $registry/$namespace/builder .

docker push $registry/$namespace/builder
oc label imagestream builder role=jenkins-slave
oc annotate imagestream builder role=jenkins-slave
