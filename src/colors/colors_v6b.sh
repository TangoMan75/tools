#!/bin/sh

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
# * @version 6.0.2-b
# */

echo_primary()   { printf "\033[97m%b\033[0m"    "${*}"; }
echo_secondary() { printf "\033[94m%b\033[0m"    "${*}"; }
echo_success()   { printf "\033[32m%b\033[0m"    "${*}"; }
echo_danger()    { printf "\033[31m%b\033[0m"    "${*}"; }
echo_warning()   { printf "\033[33m%b\033[0m"    "${*}"; }
echo_info()      { printf "\033[95m%b\033[0m"    "${*}"; }
echo_light()     { printf "\033[47;90m%b\033[0m" "${*}"; }
echo_dark()      { printf "\033[40;37m%b\033[0m" "${*}"; }

echo_label()     { printf "\033[32m%-${1}b \033[0m" "$2"; }
echo_error()     { printf '\033[1;31merror:\t\033[0;91m%s\033[0m' "${*}"; }

alert_primary()   { printf "\033[0m\n\033[1;104;97m%64s\033[0m\n\033[1;104;97m %-63s\033[0m\n\033[1;104;97m%64s\033[0m\n\n" '' "${*}" ''; }
alert_secondary() { printf "\033[0m\n\033[1;45;97m%64s\033[0m\n\033[1;45;97m %-63s\033[0m\n\033[1;45;97m%64s\033[0m\n\n"    '' "${*}" ''; }
alert_success()   { printf "\033[0m\n\033[1;42;97m%64s\033[0m\n\033[1;42;97m %-63s\033[0m\n\033[1;42;97m%64s\033[0m\n\n"    '' "${*}" ''; }
alert_danger()    { printf "\033[0m\n\033[1;41;97m%64s\033[0m\n\033[1;41;97m %-63s\033[0m\n\033[1;41;97m%64s\033[0m\n\n"    '' "${*}" ''; }
alert_warning()   { printf "\033[0m\n\033[1;43;97m%64s\033[0m\n\033[1;43;97m %-63s\033[0m\n\033[1;43;97m%64s\033[0m\n\n"    '' "${*}" ''; }
alert_info()      { printf "\033[0m\n\033[1;44;97m%64s\033[0m\n\033[1;44;97m %-63s\033[0m\n\033[1;44;97m%64s\033[0m\n\n"    '' "${*}" ''; }
alert_light()     { printf "\033[0m\n\033[1;47;90m%64s\033[0m\n\033[1;47;90m %-63s\033[0m\n\033[1;47;90m%64s\033[0m\n\n"    '' "${*}" ''; }
alert_dark()      { printf "\033[0m\n\033[1;40;37m%64s\033[0m\n\033[1;40;37m %-63s\033[0m\n\033[1;40;37m%64s\033[0m\n\n"    '' "${*}" ''; }
