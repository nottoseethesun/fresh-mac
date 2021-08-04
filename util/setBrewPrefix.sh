#!/bin/bash

# This exists because at first run, `brew` is not findable.

# @to-do: Add linux support

if [ -e /opt/homebrew ]
then
    brewPrefix="/opt/homebrew"
else
    brewPrefix="/usr/local/opt"
fi

export brewPrefix

