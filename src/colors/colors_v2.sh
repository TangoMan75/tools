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
# * TangoMan Colors
# *
# * A semantic set of colors for shell scripts inspired by Bootstrap and Symfony
# *
# * @author  "Matthias Morin" <mat@tangoman.io>
# * @licence MIT
# * @link    https://github.com/TangoMan75/tools
# * @version 2.0.0
# */

# colors v2
function echo_title()     { echo -ne "\033[1;44;97m${*}\033[0m\n"; }
function echo_caption()   { echo -ne "\033[1;46;97m${*}\033[0m\n"; }
function echo_primary()   { echo -ne "\033[96m${*}\033[0m\n"; }
function echo_secondary() { echo -ne "\033[94m${*}\033[0m\n"; }
function echo_success()   { echo -ne "\033[92m${*}\033[0m\n"; }
function echo_danger()    { echo -ne "\033[31m${*}\033[0m\n"; }
function echo_warning()   { echo -ne "\033[33m${*}\033[0m\n"; }
function echo_info()      { echo -ne "\033[95m${*}\033[0m\n"; }
function echo_muted()     { echo -ne "\033[37m${*}\033[0m\n"; }
function echo_light()     { echo -ne "\033[47;90m${*}\033[0m\n"; }
function echo_dark()      { echo -ne "\033[40;37m${*}\033[0m\n"; }
function echo_prompt()    { echo -ne "\033[0;36m${*}\033[0m "; }
function echo_label()     { echo -ne "\033[1;32m${*}:\033[0m\t"; }
function echo_error()     { echo -ne "\033[1;31merror:\t\033[0;31m${*}\033[0m\n"; }
function echo_splash()    { local hr; hr=" **$(printf "%${#1}s" | tr ' ' '*')** "; printf "\033[1;46;37m%s\033[0m\n" "${hr}"; printf "\033[1;46;37m * %s * \033[0m\n" "$1"; printf "\033[1;46;37m%s\033[0m\n$(tput el)\n" "${hr}"; }
