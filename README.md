
SSH Manager for SlowDNS

Advanced SSH user manager for SlowDNS tunneling servers with:

- Bandwidth quota per user
- Auto user deletion when quota is reached
- Usage monitoring every 5 seconds
- Telegram alerts at 20%, 50%, 75%, 90%, and 100%
- Expiry date for users
- Animated CLI menu panel
- Real traffic tracking using iptables

---

Features

- Create SSH users with data limits
- Monitor real bandwidth usage
- Automatic user removal after quota
- Automatic user removal after expiry
- Telegram notifications for usage warnings
- Live usage monitoring panel
- Top bandwidth users

---

Installation

🟢Run the installer directly from GitHub:
```
bash <(curl -s https://raw.githubusercontent.com/iddie09/ssh-manager/main/install.sh)
```
🥀Or clone the repository:
```
git clone https://github.com/iddie09/ssh-manager.git
cd ssh-manager
chmod +x install.sh
bash install.sh
```

Usage

After installation run:

menu

You will see the panel:

===================================
       ADVANCED SSH MANAGER
===================================

1 Create SSH User
2 Show Users
3 Delete User
4 Exit

---

Example User Creation

Example:

Username: test1
Password: 123
Quota: 4000
Expiry: 7

Meaning:

- 4000 MB traffic limit (4GB)
- Account expires after 7 days

---

Telegram Alerts

The system can send alerts when a user reaches:

- 20% usage
- 50% usage
- 75% usage
- 90% usage
- 100% usage (user automatically deleted)

Example alert:

⚠️ User test1 reached 75% usage (3000 / 4000 MB)

Deletion alert:

🚨 USER LIMIT REACHED
User: test1
Used: 4005MB
Limit: 4000MB
Action: User Deleted

---

File Structure

ssh-manager
│
├── install.sh
├── ssh-manager.sh
├── monitor.sh
├── traffic.sh
└── users.db

---

Requirements

- Ubuntu / Debian VPS
- Root access
- iptables
- curl
- bc

---

License

Open-source project for educational and server management use.
