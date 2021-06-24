#!/bin/bash

#/*
# * This file is part of TangoMan Bash Tools package.
# *
# * Copyright (c) 2021 "Matthias Morin" <mat@tangoman.io>
# *
# * This source file is subject to the MIT license that is bundled
# * with this source code in the file LICENSE.
# */

#/**
# * TangoMan Colors Demo
# *
# * A demo to test colors
# *
# * colors: {30..37}
# * high intensity foreground: {90..97}
# * bold: 1
# * underline: 4
# * background: {40..47}
# * high intensity background: {100..107}
# *
# * @licence MIT
# * @author  "Matthias Morin" <mat@tangoman.io>
# */

## Print color range table
function print_colors() {
    for FOREGROUND in {30..37} {90..97}; do
        for ATTR in 0 1 4; do
            for BACKGROUND in 0 {40..47} {100..107}; do
                if [ "${BACKGROUND}" -eq 0 ] && [ "${ATTR}" -eq 0 ]; then
                    echo -en "\033[${FOREGROUND}m" 
                    printf "%11s" "[${FOREGROUND}m "
                    echo -en "\033[0m"
                elif [ "${ATTR}" -eq 0 ]; then
                    echo -en "\033[${BACKGROUND};${FOREGROUND}m" 
                    printf "%11s" "[${BACKGROUND};${FOREGROUND}m "
                    echo -en "\033[0m"
                elif [ "${BACKGROUND}" -eq 0 ]; then
                    echo -en "\033[${ATTR};${FOREGROUND}m" 
                    printf "%11s" "[${ATTR};${FOREGROUND}m "
                    echo -en "\033[0m"
                else
                    echo -en "\033[$ATTR;${BACKGROUND};${FOREGROUND}m" 
                    printf "%11s" "[${ATTR};${BACKGROUND};${FOREGROUND}m "
                    echo -en "\033[0m"
                fi
            done
            echo
        done
    done
}

print_colors
