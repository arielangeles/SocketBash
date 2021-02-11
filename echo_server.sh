#!/bin/bash

# set port to be used
port=5432

# echo a message
echo $1

# open socket connection
socat TCP4-LISTEN:${port},fork EXEC:cat
