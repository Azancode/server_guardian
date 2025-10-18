
# 🛡️ Guardian — Automated System Cleanup & Disk Monitor

**Guardian** is a lightweight Bash script designed to automate system maintenance tasks such as removing old files, cleaning logs, emptying trash, and monitoring disk usage.  
It’s ideal for system administrators, Linux enthusiasts, and anyone who wants to keep their system clean and efficient.

---

## 🚀 Features

✅ Deletes temporary files older than 10 days  
✅ Removes system logs older than 14 days  
✅ Empties user trash automatically  
✅ Monitors disk usage and sends email alerts if usage exceeds 80%  
✅ Rotates log file automatically when it grows too large

---


## ⚙️ Requirements

- Linux or macOS  
- `msmtp` configured for sending email alerts  
- `awk`, `sed`, `df`, `find`, `stat`, and `tee` (preinstalled on most systems)  

---

## 📦 Installation

```bash
git clone https://github.com/<your-username>/guardian.git
cd guardian
chmod +x guardian.sh
```

---

## 🧠 Usage

Run the script manually:
```bash
./guardian.sh
```

Or schedule it to run daily with **cron**:
```bash
crontab -e
```
Then add:
```
0 3 * * * /path/to/guardian.sh
```
This will run it every night at 3 AM.

---

## 🧩 Log Files

- **guardian.log** — main log file  
- Automatically rotated when it exceeds `100 KB`  
- Older logs are saved as `guardianYYYY-MM-DD_HH-MM-SS.log`

---

## 💡 Future Improvements

- Add Slack/Telegram alert support  
- Add detailed HTML email reports  
- Implement a configuration file for thresholds and paths  

---


