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
# * @version 3.0.0
# */

# colors v3
function echo_title()     { echo -ne "\033[33m${*}\033[0m\n"; }
function echo_primary()   { echo -ne "\033[97m${*}\033[0m\n"; }
function echo_secondary() { echo -ne "\033[96m${*}\033[0m\n"; }
function echo_success()   { echo -ne "\033[92m${*}\033[0m\n"; }
function echo_danger()    { echo -ne "\033[31m${*}\033[0m\n"; }
function echo_warning()   { echo -ne "\033[93m${*}\033[0m\n"; }
function echo_info()      { echo -ne "\033[95m${*}\033[0m\n"; }
function echo_light()     { echo -ne "\033[47;90m${*}\033[0m\n"; }
function echo_dark()      { echo -ne "\033[40;37m${*}\033[0m\n"; }
function echo_muted()     { echo -ne "\033[37m${*}\033[0m\n"; }
function echo_prompt()    { echo -ne "\033[96m${*}\033[0m " ; }
function echo_label()     { echo -ne "\033[32m${*}\033[0m " ; }
function echo_error()     { echo -ne "\033[1;31merror:\t\033[0;91m${*}\033[0m\n"; }

function alert_primary()   { printf "\033[0m\n\033[1;104;97m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
function alert_secondary() { printf "\033[0m\n\033[1;45;97m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
function alert_success()   { printf "\033[0m\n\033[1;42;37m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
function alert_danger()    { printf "\033[0m\n\033[1;41;37m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
function alert_warning()   { printf "\033[0m\n\033[1;43;97m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
function alert_info()      { printf "\033[0m\n\033[1;44;97m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
function alert_light()     { printf "\033[0m\n\033[1;47;90m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
function alert_dark()      { printf "\033[0m\n\033[1;40;37m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
