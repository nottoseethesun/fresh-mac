#!/bin/bash

if [ -e /opt/homebrew ]
then
    brewPrefix="/opt/homebrew"
else
    brewPrefix="/usr/local/opt"
fi

export brewPrefix

