#!/bin/bash
hdfs dfs -rm -r /user/$USER/assignment1/task7
hadoop jar /opt/hadoop/hadoop-2.7.3/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar \
 -D mapreduce.job.name="Task 7 - s1683857" \
 -files mapper.py,reducer.py \
 -input  /user/$USER/assignment1/task6/part-* \
 -output /user/$USER/assignment1/task7 \
 -mapper mapper.py \
 -reducer reducer.py
