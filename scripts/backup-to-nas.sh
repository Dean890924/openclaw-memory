#!/bin/bash
# Sam's Memory Backup Script
# 定时备份 workspace 到 NAS

SOURCE="/Users/dean/.openclaw/workspace"
DEST="/Volumes/NAS/ai-backup/openclaw"
LOG="/Volumes/NAS/ai-backup/openclaw/backup.log"

DATE=$(date "+%Y-%m-%d %H:%M:%S")

# 同步到 NAS（保留删除操作）
rsync -avz --delete "$SOURCE/" "$DEST/" 2>> "$LOG"

echo "[$DATE] Backup completed" >> "$LOG"
