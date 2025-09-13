# Test Access → curl, wget

## Overview

This project demonstrates two essential Linux commands widely used in DevOps and System Administration:

curl → Check API or webpage response

wget → Download files from the web

Both tools are extremely useful for server connectivity checks, API testing, automation scripts, and file downloads.


## Basic Usage

```
curl <url>
```
Example:
```
curl https://example.com
```

This will fetch the HTML content of the website.

## 🔹 Commonly Used Options
🔹 1. Using curl
```
# Check website response
curl https://example.com

# View only HTTP headers
curl -I https://example.com

# Send POST request to an API
curl -X POST -d "name=nahid&role=devops" https://example.com/api

# Send API request with Authorization token
curl -H "Authorization: Bearer <token>" https://example.com/api
```

✅ Use Case: Server status checking, API testing, and HTTP response validation.

🔹 2. Using wget
```
# Download a file
wget https://example.com/file.zip

# Download and rename the file
wget -O newfile.zip https://example.com/file.zip

# Download in the background
wget -b https://example.com/bigfile.iso

# Download with limited speed
wget --limit-rate=200k https://example.com/file.iso
```

✅ Use Case: Automating file downloads, fetching remote files in scripts, large file management.
##  Example: API Testing
```
curl -X POST https://api.example.com/login \
  -H "Content-Type: application/json" \
  -d '{"username":"admin","password":"secret"}'
```
## Why DevOps Engineers Use cURL?

- Testing APIs & web services

- Debugging network issues

- Automating HTTP requests in scripts

- Checking authentication headers

- Validating load balancers & reverse proxies

## Why DevOps Engineers Use wget?

- Downloading files from the web or APIs

- Automating backups and script-based file fetches

- Handling large file downloads with resume support

- Mirroring entire websites for testing/offline access

- Managing downloads with speed limits and background mode

## Summary

- **curl** → Best for quick API / webpage response testing.

- **wget** → Best for downloading and managing files from the internet.

These two commands are core tools for DevOps engineers in daily server operations.
## Resources

- [cURL Documentation](https://curl.se/docs/)

- `man curl`