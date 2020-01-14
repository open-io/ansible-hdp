#!/bin/bash

export hdp_version="3.1.4.0-315"
hdfs dfs -mkdir -p /hdp/apps/$hdp_version/mapreduce/
hdfs dfs -put /usr/hdp/current/hadoop-client/mapreduce.tar.gz /hdp/apps/$hdp_version/mapreduce/
hdfs dfs -chown -R hdfs:hadoop /hdp
hdfs dfs -chmod -R 555 /hdp/apps/$hdp_version/mapreduce
hdfs dfs -chmod 444 /hdp/apps/$hdp_version/mapreduce/mapreduce.tar.gz

# mapred
hdfs dfs -mkdir /tmp/
hdfs dfs -chown hdfs:hadoop /tmp
hdfs dfs -chmod 777 /tmp
hdfs dfs -mkdir -p /user/mapred
hdfs dfs -chown mapred:mapred /user/mapred
hdfs dfs -chmod 755 /user/mapred
