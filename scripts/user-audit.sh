#!/bin/bash

logfile="user_audit.log"
log() {
echo "$(date "+%Y-%m-%d %H:%M:%S") - $1" >> "$logfile"
}

username="$1"

echo "checking audit details for user: $username"

if getent passwd "$username"; then
echo "user $username exists"
log "user exists in the system"

getent passwd "$username" | while IFS= read -r line; do

homedir=$( echo "$line" | cut -d : -f6 )
shell=$( echo "$line" | cut -d : -f7)
logins=$( last | wc -l )

echo "Home directory: $homedir"
echo "shell: $shell"
echo "total login counts: $logins"
echo "Audit completed for user: $username. Logs saved in $logfile"

log "Home directory : $homedir"
log "shell : $shell"
log "Total logins : $logins"

done
else
exit 1
fi
