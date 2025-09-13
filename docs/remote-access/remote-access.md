# Remote Access & File Transfer → `ssh`, `scp`

A professional, practical guide for DevOps engineers and system administrators covering secure remote access and file transfer with **`ssh`** and **`scp`**. Includes common commands, examples, troubleshooting tips, and best practices.

## Overview

- **`ssh`** — Secure Shell: remote login, remote command execution, tunneling, and port forwarding.  
- **`scp`** — Secure Copy: copy files between local and remote hosts over SSH.  
- For higher-performance file sync, consider **`rsync`** over SSH (covered briefly below).



## Common `ssh` Commands & Usage

```
# 1. Basic remote login
ssh user@remote-host

# 2. Specify a non-default port
ssh -p 2222 user@remote-host

# 3. Run a single command remotely
ssh user@remote-host 'uname -a && uptime'

# 4. Forward local port to remote (local->remote)
ssh -L 8080:localhost:80 user@remote-host

# 5. Remote port forwarding (remote->local)
ssh -R 9090:localhost:3000 user@remote-host

# 6. Dynamic SOCKS proxy (useful with browsers)
ssh -D 1080 user@remote-host

# 7. Use a specific private key
ssh -i ~/.ssh/id_rsa_prod user@remote-host

# 8. Increase verbosity for debugging
ssh -v user@remote-host

# 9. Agent forwarding (use carefully)
ssh -A user@remote-host

# 10. Use SSH config alias (~/.ssh/config)
ssh web1
```
## Common scp Commands & Usage
```
# 1. Copy local file to remote
scp ./localfile.txt user@remote-host:/home/user/

# 2. Copy remote file to local
scp user@remote-host:/home/user/remote.log ./localdir/

# 3. Copy directory recursively
scp -r ./mydir user@remote-host:/home/user/

# 4. Specify non-default port
scp -P 2222 file.txt user@remote-host:/path/

# 5. Use a specific key
scp -i ~/.ssh/id_rsa_prod file.txt user@remote-host:/path/

# 6. Verbose progress
scp -v file.zip user@remote-host:/path/
```
## SSH Key Setup (Passwordless, recommended)
```
# 1. Generate key pair (on local machine)
ssh-keygen -t ed25519 -C "your-email@example.com"

# 2. Copy public key to remote
ssh-copy-id user@remote-host

# 3. Secure permissions on remote
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```
## Troubleshooting Tips

- **Permission denied** → check ~/.ssh/authorized_keys and permissions.

- **Connection timed** out → firewall or port issue. Test with telnet host port.

- **Key not accepted** → check IdentityFile and ssh -v logs.

- **Slow transfer** → prefer rsync or enable compression (scp -C).

- **Hangs at key exchange** → check ciphers/algorithms, increase verbosity (-vvv).

## Automation & Scripting Tips

- Use `ssh -o BatchMode=yes` in scripts (fail if no keys).

- Use `rsync` for backups/deployments.

- Never hardcode secrets/keys.

- Use CI/CD deploy keys with restricted scope.

## Windows Notes

- Use **OpenSSH** in PowerShell (modern Windows) or **PuTTY** (plink/pscp).

- Convert keys using `puttygen` if needed.

- **WSL** recommended for Linux parity.
