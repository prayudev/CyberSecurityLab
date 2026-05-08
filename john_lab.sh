#!/bin/bash

echo "This is my test file" > test.txt

zip -e secret.zip test.txt

unzip secret.zip

zip2john secret.zip > zip_hash.txt

cat zip_hash.txt

john --wordlist=/usr/share/wordlists/rockyou.txt zip_hash.txt

john --show zip_hash.txt
