#!/usr/bin/bash

# bottles likes to leave some processes open even after closing it. This results
# in systemd waiting for two minutes for them to finish up (and if it didn't have
# a timeout then it would probably just wait forever)
# So just kill bwrap which gets everything stopped

killall -9 bwrap
systemctl reboot
