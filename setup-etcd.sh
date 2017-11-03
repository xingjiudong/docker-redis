#!/bin/bash
set -e

source env.config 

etcdctl mkdir /haproxy-config/${PROJECT_NAME}/redis
etcdctl set haproxy-config/${PROJECT_NAME}/redis/frontend/bind *:6379
etcdctl set haproxy-config/${PROJECT_NAME}/redis/frontend/default_backend redis-server
etcdctl set haproxy-config/${PROJECT_NAME}/redis/backend/redis-1 redis-server:6379
