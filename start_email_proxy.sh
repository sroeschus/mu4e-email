#!/bin/bash

socat TCP-LISTEN:13776,fork PROXY:fwdproxy:smtp.fastmail.com:587,proxyport=8080 &
socat TCP6-LISTEN:13777,fork PROXY:fwdproxy:imap.fastmail.com:993,proxyport=8080 &
