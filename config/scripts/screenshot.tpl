#!/bin/bash
sleep 0.1
scrot '%Y-%m-%d--%s_$wx$h.png' -e 'mv $f ~/Pictures/screenshots'
