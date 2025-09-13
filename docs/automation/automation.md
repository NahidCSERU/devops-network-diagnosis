# 🔹 Step 7: Task Scheduling with `crontab -e`

Task automation is a key part of DevOps and system administration. Using **cron jobs**, you can schedule scripts, commands, and recurring tasks to run automatically at fixed intervals (hourly, daily, weekly, etc).

## What is `cron`?

- `cron` is a time-based job scheduler in Unix/Linux systems.  
- Jobs (commands or scripts) are defined in the **crontab (cron table)**.  
- Each user can have their own `crontab`.  



## Open Crontab Editor

```
crontab -e
```
This opens the current user’s crontab file in your default editor (often nano or vim).
## Crontab Format

Each cron job has **5 time fields** followed by the command:
```
* * * * * <command>
| | | | |
| | | | └── Day of Week (0-6, Sunday=0)
| | | └──── Month (1-12)
| | └────── Day of Month (1-31)
| └──────── Hour (0-23)
└────────── Minute (0-59)
```
## Examples of Cron Jobs
```
# Run a script every day at 2:00 AM
0 2 * * * /home/user/backup.sh

# Clean temp files every Sunday at midnight
0 0 * * 0 rm -rf /tmp/*

# Run health check script every 15 minutes
*/15 * * * * /home/user/healthcheck.sh

# Restart a service at 3:30 AM daily
30 3 * * * systemctl restart nginx

# Run a Python script every hour
0 * * * * /usr/bin/python3 /home/user/task.py

# Append uptime output to a log file every 5 minutes
*/5 * * * * uptime >> /home/user/uptime.log
```
## View & Manage Crontab
```
# List current user's cron jobs
crontab -l

# Edit crontab (current user)
crontab -e

# Remove all cron jobs for current user
crontab -r

# Edit root's crontab
sudo crontab -e
```
## Best Practices

- Always use **absolute paths** for commands and scripts.

- Redirect output/errors to a log file, e.g. `>> /var/log/cron.log 2>&1`.

- Test scripts manually before scheduling.

- For system-wide jobs, use `/etc/crontab` or drop files in `/etc/cron.d/`.

- Monitor logs in `/var/log/syslog` or `/var/log/cron` (depends on distro).

## Debugging Cron Jobs

- Check cron logs:
```
grep CRON /var/log/syslog     # Debian/Ubuntu
journalctl -u cron            # systemd systems
```

- Ensure scripts have execute permission:
```
chmod +x backup.sh
```

- Always test the environment (cron runs with limited PATH).

## Key Use Cases for DevOps

- Automated backups (e.g., `tar`, `rsync`, `scp`).

- Log rotation and cleanup.

- Running health checks and alert scripts.

- Automated deployments or builds.

- Periodic reporting (disk usage, uptime, system info).
## Quick Example: Automated Backup Job
```
# backup.sh
#!/bin/bash
tar -czf /home/user/backups/home-$(date +\%F).tar.gz /home/user/data
```

Schedule it with `crontab -e`:
```
0 1 * * * /home/user/backup.sh >> /home/user/backup.log 2>&1
```

This runs **every day at 1:00 AM** and logs output to `backup.log`.