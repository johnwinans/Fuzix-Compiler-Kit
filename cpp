#!/bin/sh
# Temporary until we get our own cpp
#
/lib/cpp -undef -nostdinc -D__8085__ $*
