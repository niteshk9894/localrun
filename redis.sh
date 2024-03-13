#!/bin/bash

# Create directories for each cluster node
mkdir -p clusters/{6380,6381,6382,6383,6384,6385}

# Function to create a Redis configuration file for a given port
create_redis_conf() {
  local port=$1
  cat <<EOF > clusters/${port}/redis.conf
port ${port}
cluster-enabled yes
cluster-config-file nodes.conf
cluster-node-timeout 15000
appendonly yes
EOF
}

# Create Redis configuration files for each node
create_redis_conf 6380
create_redis_conf 6381
create_redis_conf 6382
create_redis_conf 6383
create_redis_conf 6384
create_redis_conf 6385

# Function to start Redis server for a node
start_redis_server() {
  local port=$1
  cd clusters/${port}
  redis-server ./redis.conf &
  cd ../..
}

# Start Redis servers for each node concurrently
start_redis_server 6380
start_redis_server 6381
start_redis_server 6382
start_redis_server 6383
start_redis_server 6384
start_redis_server 6385

# Check if all servers are running
ps aux | grep redis-server

# Connect nodes into a Redis Cluster with automatic 'yes' response
yes yes | redis-cli --cluster create 127.0.0.1:6380 127.0.0.1:6381 127.0.0.1:6382 127.0.0.1:6383 127.0.0.1:6384 127.0.0.1:6385 --cluster-replicas 1
