#!/bin/bash

echo "Waiting for Kafka to be ready..."
cub kafka-ready -b kafka0:29092 1 30

topics=("test-topic1" "test-topic2" "test-topic3" "test-topic4" "test-topic5" "test-topic6" "test-topic7" "test-topic8" "test-topic9")

for topic in "${topics[@]}"; do
    kafka-topics --create --topic "$topic" --partitions 2 --replication-factor 1 --if-not-exists --bootstrap-server kafka0:29092
done

kafka-console-producer --bootstrap-server kafka0:29092 -topic test-topic1 < /data/message.json
