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
# * @author  "Matthias Morin" <mat@tangoman.io>
# * @licence MIT
# * @link    https://github.com/TangoMan75/tools
# */

CURDIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
# shellcheck source=/dev/null
. "${CURDIR}/colors_v6.sh"

padding=9

function help() {
    alert_secondary 'TangoMan Colors'
    echo_warning  "$(basename "$0" .sh)"
    echo_primary '  A semantic set of colors for shell scripts inspired by Bootstrap and Symfony'
    echo
    echo_warning  'Description'
    echo_label   "${padding}" "  ${FUNCNAME[0]}"; echo_primary 'Print help message'
    echo_label   "${padding}" '  command';        echo_primary 'This command does nothing'
    echo_label   "${padding}" '  foo';            echo_primary 'This command does foo'
    echo_label   "${padding}" '  bar';            echo_primary 'This command does bar'
    echo
}

function demo_echo() {
    echo_primary   'This is primary text   (97m)'
    echo_secondary 'This is secondary text (94m)'
    echo_success   'This is a success      (32m)'
    echo_danger    'This is a danger       (31m)'
    echo_warning   'This is a warning      (33m)'
    echo_info      'This is an info        (95m)'
    echo_light     'This is light          (47;90m)'
    echo_dark      'This is dark           (40;37m)'
    echo
    echo_label     "${padding}" 'label (32m):'; echo_primary 'This is a label'
    echo_error     '(1;31m) This is an error (91m)'
    echo
}

function demo_alert() {
    alert_primary   'This is a primary alert   (1;104;97m)'
    alert_secondary 'This is a secondary alert (1;45;97m)'
    alert_success   'This is a success alert   (1;42;97m)'
    alert_danger    'This is a danger alert    (1;41;97m)'
    alert_warning   'This is a warning alert   (1;43;97m)'
    alert_info      'This is a info alert      (1;44;97m)'
    alert_light     'This is a light alert     (1;47;90m)'
    alert_dark      'This is a dark alert      (1;40;37m)'
}

help
demo_echo
demo_alert

