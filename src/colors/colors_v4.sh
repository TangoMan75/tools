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
# * @version 4.0.0
# */

# colors v4
echo_title()     { printf "\033[33m%s\033[0m\n"    "${*}"; }
echo_primary()   { printf "\033[97m%s\033[0m\n"    "${*}"; }
echo_secondary() { printf "\033[96m%s\033[0m\n"    "${*}"; }
echo_success()   { printf "\033[92m%s\033[0m\n"    "${*}"; }
echo_danger()    { printf "\033[31m%s\033[0m\n"    "${*}"; }
echo_warning()   { printf "\033[93m%s\033[0m\n"    "${*}"; }
echo_info()      { printf "\033[95m%s\033[0m\n"    "${*}"; }
echo_light()     { printf "\033[47;90m%s\033[0m\n" "${*}"; }
echo_dark()      { printf "\033[40;37m%s\033[0m\n" "${*}"; }
echo_muted()     { printf "\033[37m%s\033[0m\n"    "${*}"; }
echo_prompt()    { printf "\033[96m%s\033[0m "     "${*}"; }
echo_label()     { printf "\033[32m%s\033[0m "     "${*}"; }
echo_error()     { printf "\033[1;31merror:\t\033[0;91m%s\033[0m\n" "${*}"; }

alert_primary()   { printf "\033[0m\n\033[1;104;97m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
alert_secondary() { printf "\033[0m\n\033[1;45;97m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
alert_success()   { printf "\033[0m\n\033[1;42;37m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
alert_danger()    { printf "\033[0m\n\033[1;41;37m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
alert_warning()   { printf "\033[0m\n\033[1;43;97m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
alert_info()      { printf "\033[0m\n\033[1;44;97m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
alert_light()     { printf "\033[0m\n\033[1;47;90m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
alert_dark()      { printf "\033[0m\n\033[1;40;37m$(tput el)\n%4s${*}$(tput el)\n$(tput el)\n\033[0m$(tput el)\n"; }
