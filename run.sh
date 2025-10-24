#!/bin/bash
set -e

# 读取HA的配置参数（/data/options.json由HA自动生成）
OPTIONS=$(cat /data/options.json)
PORT=$(echo "$OPTIONS" | jq -r '.port')
LOG_LEVEL=$(echo "$OPTIONS" | jq -r '.log_level')
DATA_DIR=$(echo "$OPTIONS" | jq -r '.data_dir')

# 输出启动信息（便于在HA日志中调试）
echo "=== CloudDrive2 (RK3566) 启动配置 ==="
echo "端口: $PORT | 日志级别: $LOG_LEVEL | 数据目录: $DATA_DIR"

# 启动CloudDrive2（参数需与官方文档一致）
exec /app/clouddrive2 run \
  --port "$PORT" \
  --log-level "$LOG_LEVEL" \
  --data-dir "/app/data"