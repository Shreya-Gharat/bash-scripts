# 🛠️ Bash Automation Scripts

## Description
This repository contains a collection of Bash scripts designed to automate common Linux system administration tasks. These scripts focus on reliability, utilizing `rsync` for backups and `systemctl` for service monitoring.

## 📂 Contents

### 1. Service Health Monitor (`service_health.sh`)
* **Function:** Monitors critical system services (default: `cron`).
* **Self-Healing:** If a service is inactive, the script attempts to restart it automatically.
* **Logging:** Appends status checks and restart actions to `health.log` with timestamps.

### 2. Incremental Backup Tool (`backup.sh`)
* **Function:** syncs a source directory to a target directory using `rsync`.
* **Key Features:**
  * **Smart Syncing:** Uses `rsync` to only copy files that have changed.
  * **Version Control:** Old or changed files are **not deleted**; they are moved to a dated folder (e.g., `target/2025-12-19`) before the main folder is updated.
  * **Safety Checks:** Verifies that `rsync` is installed on the system before running.
  * **Logging:** detailed transfer logs are saved to `backup_YYYY-MM-DD.log`.
