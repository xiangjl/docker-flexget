#!/bin/sh

#export http_proxy=
#export https_proxy=
#export no_proxy=localhost,transmission,127.0.0.1/8

rm -f /flexget/.config-lock

/usr/bin/flexget -c /flexget/config.yml --loglevel verbose daemon start
