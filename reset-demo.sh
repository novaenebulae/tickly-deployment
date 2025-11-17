#!/bin/bash

set -e

LOG_FILE="/var/log/tickly/reset-demo.log"
TICKLY_DIR="/home/ubuntu/tickly-deployment"

mkdir -p /var/log/tickly

echo "======================================" >> "$LOG_FILE"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Start" >> "$LOG_FILE"

cd "$TICKLY_DIR"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Stopping containers ..." >> "$LOG_FILE"
/usr/bin/docker compose down -v >> "$LOG_FILE" 2>&1

sleep 5

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Starting containers..." >> "$LOG_FILE"
/usr/bin/docker compose up -d >> "$LOG_FILE" 2>&1

sleep 15

echo "[$(date '+%Y-%m-%d %H:%M:%S')] TASK DONE!" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"
