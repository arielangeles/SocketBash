#!/bin/bash

# set port to be used
port=5432

# echo a message ($1 acts as first parameter)
echo $1

# open socket connection (socat must be installed)
socat TCP4-LISTEN:${port},fork EXEC:cat
