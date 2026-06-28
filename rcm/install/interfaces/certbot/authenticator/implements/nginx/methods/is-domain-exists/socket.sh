#!/bin/bash

fqdn="$RCM_FQDN"

INDENT+="    " \
rcm dig get-info domain $isfast \
    --domain="$fqdn" \
    --waiting-time="60"
