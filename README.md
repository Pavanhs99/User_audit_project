# User info audit project 

-This is a simple script that accepts username as input and checks if user exists on the system.
-If user exists, it fetches home directory, default shell and total number of times user has logged in.
-Output is logged with timestamp.

---

# Project structure

    ```
    User_audit_project/
               |
               |-- scripts/
               |      |_user-audit.sh
               |
               |-- log/
               |      |__user_audit.log
               |
               |-- .gitignore
               |
               |-- README.md
     ```
---

## How it works

-Accepts username with positional parameter. 
-Checks if username exists and presents user info using 'getent passwd'.
-Fetches home directory, default shell and number of logins by user with help of 'cut -d : -f6 and -f7' and 'last | ws -l' respectively.
-Logs output into user_audit.log.

---

## How to run

 ```bash
 bash scripts/user-audit.sh
 ```
-You will find logs inside the 'log/' folder after each run.

---

## Note

-Logs are excluded from git tracking using '.gitignore'
-Script is safe and doesn't modify your system.
