#!/bin/bash
# Set variables
host=www.yahoo.com
port=80

# Open connection with read/write
exec 5<>/dev/tcp/$host/$port

# echo web page headers
echo -e "GET / HTTP/1.1\r\nhost:$host\r\nConnection: close\r\n\r\n" >&5

# read
cat <&5

# after using socket, close connection

exec 5<&-
exec 5>&-
