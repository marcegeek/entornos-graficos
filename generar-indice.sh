#!/bin/sh

grep ^'###' trabajo.md | sed -e 's/###/  1./g' | sed -e "s/$/\\\\n/g" | tr -d '\n'
