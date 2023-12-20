nmcli -t -f SIGNAL,ACTIVE device wifi | awk -F':' '{if($2=="yes")print$1}'

