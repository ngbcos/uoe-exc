#!/bin/bash
hdfs dfs -rm -r /user/$USER/assignment1/task2
hadoop jar /opt/hadoop/hadoop-2.7.3/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar \
 -D mapreduce.job.name="Task 2 - s1683857" \
 -input /user/$USER/assignment1/task1 \
 -output /user/$USER/assignment1/task2 \
 -mapper mapper.py \
 -file mapper.py \
 -reducer reducer.py \
 -file reducer.py