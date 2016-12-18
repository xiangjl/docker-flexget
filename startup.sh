#!/bin/sh

#export http_proxy=
#export https_proxy=

/usr/local/bin/flexget -c /flexget/config.yml --loglevel info daemon start
