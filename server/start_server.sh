#!/usr/bin/env bash
# generate thrift file
../scripts/gen_thrift_file.py java '../thrift/ModelDB.thrift' './src/main/thrift/'

# check if thrift version specified and pass that on
THRIFT_VERSION="-Dthrift_version=0.9.3"

# echo "mvn clean compile $THRIFT_VERSION && mvn exec:java -Dexec.mainClass=\"edu.mit.csail.db.ml.main.Main\" $THRIFT_VERSION"
mvn clean compile $THRIFT_VERSION
mvn exec:java -Dexec.mainClass="edu.mit.csail.db.ml.main.Main" $THRIFT_VERSION
