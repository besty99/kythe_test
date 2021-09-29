#!/bin/bash
export KYTHE_CORPUS="K2"

export KYTHE_OUTPUT_DIRECTORY="/home/hdd1/out"
export KYTHE_OUTPUT_DIRECTORY_GS="/home/hdd1/out/gs"
export KYTHE_OUTPUT_DIRECTORY_SERVING="/home/hdd1/out/serving"

mkdir -p $KYTHE_OUTPUT_DIRECTORY
mkdir -p $KYTHE_OUTPUT_DIRECTORY_GS
mkdir -p $KYTHE_OUTPUT_DIRECTORY_SERVING

java -jar /opt/kythe/kythe-v0.0.53/indexers/java_indexer.jar \
  $KYTHE_OUTPUT_DIRECTORY/extracts/*.kzip > $KYTHE_OUTPUT_DIRECTORY/entries1

/opt/kythe/kythe-v0.0.53/tools/write_entries  --graphstore leveldb:$KYTHE_OUTPUT_DIRECTORY_GS < $KYTHE_OUTPUT_DIRECTORY/entries
/opt/kythe/kythe-v0.0.53/tools/write_tables --graphstore $KYTHE_OUTPUT_DIRECTORY_GS --out $KYTHE_OUTPUT_DIRECTORY_SERVING
