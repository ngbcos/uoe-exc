#!/bin/bash

hdfs dfs -rm -r /user/$USER/assignment2/task2

hadoop jar /opt/hadoop/hadoop-2.7.3/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar \
  -D mapreduce.job.name="Task 2 - s1683857" \
  -D mapreduce.job.output.key.comparator.class=org.apache.hadoop.mapreduce.lib.partition.KeyFieldBasedComparator \
  -D mapreduce.partition.keycomparator.options="-nr" \
  -D mapreduce.job.reduces=1 \
  -files mapper.py,reducer.py \
 -input  /data/assignments/ex2/part2/stackLarge.txt \
 -output /user/$USER/assignment2/task2 \
 -mapper  mapper.py \
 -reducer reducer.py

hdfs dfs -cat /user/$USER/assignment2/task2/part-* | head -20 > output.out
