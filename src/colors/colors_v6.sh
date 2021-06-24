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
# * @version v6.0.2
# */

## Print primary (bright white text)
echo_primary()   { printf "\033[97m%b\033[0m\n"    "${*}"; }

## Print secondary (bright blue text)
echo_secondary() { printf "\033[94m%b\033[0m\n"    "${*}"; }

## Print success (bright green text)
echo_success()   { printf "\033[32m%b\033[0m\n"    "${*}"; }

## Print danger (red text)
echo_danger()    { printf "\033[31m%b\033[0m\n"    "${*}"; }

## Print warning (orange text)
echo_warning()   { printf "\033[33m%b\033[0m\n"    "${*}"; }

## Print info (bright purple text)
echo_info()      { printf "\033[95m%b\033[0m\n"    "${*}"; }

## Print light (black text over white background)
echo_light()     { printf "\033[47;90m%b\033[0m\n" "${*}"; }

## Print dark (white text over black background)
echo_dark()      { printf "\033[40;37m%b\033[0m\n" "${*}"; }

## Print label (green text with padding, no carriage return)
echo_label()     { printf "\033[32m%-${1}b \033[0m" "$2"; }

## Print error (bright red text, prefixed with bold red 'error:')
echo_error()     { printf '\033[1;31merror:\t\033[0;91m%s\033[0m\n' "${*}"; }

## Print primary alert (bold white text over bright blue background)
alert_primary()   { printf "\033[0m\n\033[1;104;97m%64s\033[0m\n\033[1;104;97m %-63s\033[0m\n\033[1;104;97m%64s\033[0m\n\n" '' "${*}" ''; }

## Print secondary alert (bold white text over bright purple background)
alert_secondary() { printf "\033[0m\n\033[1;45;97m%64s\033[0m\n\033[1;45;97m %-63s\033[0m\n\033[1;45;97m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print success alert (bold white text over bright green background)
alert_success()   { printf "\033[0m\n\033[1;42;97m%64s\033[0m\n\033[1;42;97m %-63s\033[0m\n\033[1;42;97m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print danger alert (bold white text over bright red background)
alert_danger()    { printf "\033[0m\n\033[1;41;97m%64s\033[0m\n\033[1;41;97m %-63s\033[0m\n\033[1;41;97m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print warning alert (bold white text over bright orange background)
alert_warning()   { printf "\033[0m\n\033[1;43;97m%64s\033[0m\n\033[1;43;97m %-63s\033[0m\n\033[1;43;97m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print info alert (bold white text over bright blue background)
alert_info()      { printf "\033[0m\n\033[1;44;97m%64s\033[0m\n\033[1;44;97m %-63s\033[0m\n\033[1;44;97m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print light alert (black text over white background)
alert_light()     { printf "\033[0m\n\033[1;47;90m%64s\033[0m\n\033[1;47;90m %-63s\033[0m\n\033[1;47;90m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print dark alert (bold white text over black background)
alert_dark()      { printf "\033[0m\n\033[1;40;37m%64s\033[0m\n\033[1;40;37m %-63s\033[0m\n\033[1;40;37m%64s\033[0m\n\n"    '' "${*}" ''; }
