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
# * @version 5.0.0
# */

## Print title (orange text)
echo_title()     { printf "\033[33m%s\033[0m\n"    "${*}"; }

## Print primary (bright white text)
echo_primary()   { printf "\033[97m%s\033[0m\n"    "${*}"; }

## Print secondary (bright cyan text)
echo_secondary() { printf "\033[96m%s\033[0m\n"    "${*}"; }

## Print success (bright green text)
echo_success()   { printf "\033[92m%s\033[0m\n"    "${*}"; }

## Print danger (red text)
echo_danger()    { printf "\033[31m%s\033[0m\n"    "${*}"; }

## Print warning (bright orange text)
echo_warning()   { printf "\033[93m%s\033[0m\n"    "${*}"; }

## Print info (bright purple text)
echo_info()      { printf "\033[95m%s\033[0m\n"    "${*}"; }

## Print light (black text over white background)
echo_light()     { printf "\033[47;90m%s\033[0m\n" "${*}"; }

## Print dark (white text over black background)
echo_dark()      { printf "\033[40;37m%s\033[0m\n" "${*}"; }

## Print muted (grey text)
echo_muted()     { printf "\033[37m%s\033[0m\n"    "${*}"; }

## Print prompt (bright cyan text, no carriage return)
echo_prompt()    { printf "\033[96m%s\033[0m "     "${*}"; }

## Print label (green text, no carriage return)
echo_label()     { printf "\033[32m%s\033[0m "     "${*}"; }

## Print error (bright red text, no carriage return, prefixed with bold red 'error:')
echo_error()     { printf "\033[1;31merror:\t\033[0;91m%s\033[0m\n" "${*}"; }

## Print primary alert (white text over bright blue background)
alert_primary()   { printf "\033[0m\n\033[1;104;97m%64s\033[0m\n\033[1;104;97m %-63s\033[0m\n\033[1;104;97m%64s\033[0m\n\n" '' "${*}" ''; }

## Print secondary alert (white text over bright purple background)
alert_secondary() { printf "\033[0m\n\033[1;45;97m%64s\033[0m\n\033[1;45;97m %-63s\033[0m\n\033[1;45;97m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print success alert (white text over bright green background)
alert_success()   { printf "\033[0m\n\033[1;42;37m%64s\033[0m\n\033[1;42;37m %-63s\033[0m\n\033[1;42;37m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print danger alert (white text over bright red background)
alert_danger()    { printf "\033[0m\n\033[1;41;37m%64s\033[0m\n\033[1;41;37m %-63s\033[0m\n\033[1;41;37m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print warning alert (white text over bright orange background)
alert_warning()   { printf "\033[0m\n\033[1;43;97m%64s\033[0m\n\033[1;43;97m %-63s\033[0m\n\033[1;43;97m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print info alert (white text over bright blue background)
alert_info()      { printf "\033[0m\n\033[1;44;97m%64s\033[0m\n\033[1;44;97m %-63s\033[0m\n\033[1;44;97m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print light alert (black text over white background)
alert_light()     { printf "\033[0m\n\033[1;47;90m%64s\033[0m\n\033[1;47;90m %-63s\033[0m\n\033[1;47;90m%64s\033[0m\n\n"    '' "${*}" ''; }

## Print dark alert (white text over black background)
alert_dark()      { printf "\033[0m\n\033[1;40;37m%64s\033[0m\n\033[1;40;37m %-63s\033[0m\n\033[1;40;37m%64s\033[0m\n\n"    '' "${*}" ''; }
