#!/bin/bash
# vim: sw=4 et

set -e

OSC_PATH=~/wrk/osc

for s in $(<spec_list); do

    if ! test -f $OSC_PATH/KDE:KDE4:Factory:Desktop/$s ; then
        echo "$s does not exist.. "
        exit 1
    fi
    ./extract_strings.sh $OSC_PATH/KDE:KDE4:Factory:Desktop/$s
done
msgcat -s *.po > kde4-openSUSE.pot
