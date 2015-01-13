#!/bin/bash
if [ "$IFACE" = "sender" ]; then
  /etc/init.d/dnsmasq restart
fi
