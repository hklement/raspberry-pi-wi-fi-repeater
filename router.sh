#!/bin/bash
iptables --table nat --append POSTROUTING --out-interface receiver -j MASQUERADE
iptables --append FORWARD --in-interface sender -j ACCEPT
