#!/bin/bash

# set port to be used
port=5432

# echo a message ($1 acts as first parameter) | send message through localhost and specified port
echo $1 | nc localhost $port
