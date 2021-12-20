#!/bin/sh
# Inspired from https://github.com/hhcordero/docker-jmeter-client
# Basically runs jmeter, assuming the PATH is set to point to JMeter bin-dir (see Dockerfile)
#
# This script expects the standdard JMeter command parameters.
#

# Install jmeter plugins available on /plugins volume
echo $MVN_OPTION
mvn -f $DEPENCENCIES_PATH/plancheck-dependencies.xml dependency:copy-dependencies -DoutputDirectory=/tmp $MVN_OPTION


