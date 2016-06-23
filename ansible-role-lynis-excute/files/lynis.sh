#!/bin/bash
cd /opt/lynis
./lynis -Q > /dev/null 2>&1 &
exit 0
