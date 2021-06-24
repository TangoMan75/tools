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
# * TangoMan Bash Tools
# *
# * A set of tools for shell scripts
# *
# * @licence MIT
# * @author  "Matthias Morin" <mat@tangoman.io>
# */

## Throws error when user doesn't own root privileges
function check_root() {
    if [ "$(id | awk '{print $1}')" != 'uid=0(root)' ];then
        echo_error "user \"${USER}\" does not own root privileges."

        return 1
    fi
}

