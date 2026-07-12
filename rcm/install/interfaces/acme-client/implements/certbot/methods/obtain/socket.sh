#!/bin/bash

# Dependency.
[ -n "$RCM_FQDN" ] || { red "Unable to proceed, variable \$RCM_FQDN is empty."; x; }

# Prepare PATH.
command -v certbot >/dev/null || {
    [ -f /etc/profile.d/apps-bin-path.sh ] && . /etc/profile.d/apps-bin-path.sh
}

domain_1="$RCM_FQDN"

INDENT+="$RCM_INDENT" \
rcm certbot obtain \
  --domain="$domain_1" \
    ; [ ! $? -eq 0 ] && x
