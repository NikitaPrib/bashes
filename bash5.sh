#!/bin/bash
# Makes file logs.log
find /var/log -name "*.log" 2>/dev/null -exec tail -n1 {} \; > logs.log