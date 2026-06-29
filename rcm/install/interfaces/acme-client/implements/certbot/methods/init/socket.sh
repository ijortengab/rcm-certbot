#!/bin/bash

INDENT+="$RCM_INDENT" \
rcm certbot init \
    ; [ ! $? -eq 0 ] && x

# Tambahkan path.
command -v "certbot" >/dev/null || {
    [ -f /etc/profile.d/apps-bin-path.sh ] && . /etc/profile.d/apps-bin-path.sh
}
