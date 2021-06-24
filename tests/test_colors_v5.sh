#!/bin/bash

#/*
# * This file is part of TangoMan Bash Tools package.
# *
# * Copyright (c) 2021 "Matthias Morin" <mat@tangoman.io>
# *
# * This source file is subject to the MIT license that is bundled
# * with this source code in the file LICENSE.
# */

# https://github.com/pgrange/bash_unit
#
#     assert "test -e /tmp/the_file"
#     assert_fails "grep this /tmp/the_file" "should not write 'this' in /tmp/the_file"
#     assert_status_code 25 code
#     assert_equals "a string" "another string" "a string should be another string"
#     assert_not_equals "a string" "a string" "a string should be different from another string"
#     fake ps echo hello world

src_file="../src/colors/colors_v5.sh"

# shellcheck source=/dev/null
. "${src_file}"

test_script_execution_should_return_expected_status_code() {
    assert_status_code 0 "${src_file}"
}

test_echo_title_should_return_expected_string() {
    assert_status_code 127 "$(echo_title foobar)"
    assert_equals "$(echo -ne "\033[33mfoobar\033[0m\n")" "$(echo_title foobar)"
}

test_echo_primary_should_return_expected_string() {
    assert_status_code 127 "$(echo_primary foobar)"
    assert_equals "$(echo -ne "\033[97mfoobar\033[0m\n")" "$(echo_primary foobar)"
}

test_echo_secondary_should_return_expected_string() {
    assert_status_code 127 "$(echo_secondary foobar)"
    assert_equals "$(echo -ne "\033[96mfoobar\033[0m\n")" "$(echo_secondary foobar)"
}

test_echo_success_should_return_expected_string() {
    assert_status_code 127 "$(echo_success foobar)"
    assert_equals "$(echo -ne "\033[92mfoobar\033[0m\n")" "$(echo_success foobar)"
}

test_echo_danger_should_return_expected_string() {
    assert_status_code 127 "$(echo_danger foobar)"
    assert_equals "$(echo -ne "\033[31mfoobar\033[0m\n")" "$(echo_danger foobar)"
}

test_echo_warning_should_return_expected_string() {
    assert_status_code 127 "$(echo_warning foobar)"
    assert_equals "$(echo -ne "\033[93mfoobar\033[0m\n")" "$(echo_warning foobar)"
}

test_echo_info_should_return_expected_string() {
    assert_status_code 127 "$(echo_info foobar)"
    assert_equals "$(echo -ne "\033[95mfoobar\033[0m\n")" "$(echo_info foobar)"
}

test_echo_light_should_return_expected_string() {
    assert_status_code 127 "$(echo_light foobar)"
    assert_equals "$(echo -ne "\033[47;90mfoobar\033[0m\n")" "$(echo_light foobar)"
}

test_echo_dark_should_return_expected_string() {
    assert_status_code 127 "$(echo_dark foobar)"
    assert_equals "$(echo -ne "\033[40;37mfoobar\033[0m\n")" "$(echo_dark foobar)"
}

test_echo_muted_should_return_expected_string() {
    assert_status_code 127 "$(echo_muted foobar)"
    assert_equals "$(echo -ne "\033[37mfoobar\033[0m\n")" "$(echo_muted foobar)"
}

test_echo_prompt_should_return_expected_string() {
    assert_status_code 127 "$(echo_prompt foobar)"
    assert_equals "$(echo -ne "\033[96mfoobar\033[0m " )" "$(echo_prompt foobar)"
}

test_echo_label_should_return_expected_string() {
    assert_status_code 127 "$(echo_label foobar)"
    assert_equals "$(echo -ne "\033[32mfoobar\033[0m " )" "$(echo_label foobar)"
}

test_echo_error_should_return_expected_string() {
    assert_status_code 127 "$(echo_error foobar)"
    assert_equals "$(echo -ne "\033[1;31merror:\t\033[0;91mfoobar\033[0m\n")" "$(echo_error foobar)"
}

test_alert_primary_should_return_expected_string() {
    assert_status_code 127 "$(alert_primary)"
    assert_equals "$(printf "\033[0m\n\033[1;104;97m%64s\033[0m\n\033[1;104;97m %-63s\033[0m\n\033[1;104;97m%64s\033[0m\n\n" '' "foobar" '';)" "$(alert_primary foobar)"
}

test_alert_secondary_should_return_expected_string() {
    assert_status_code 127 "$(alert_secondary)"
    assert_equals "$(printf "\033[0m\n\033[1;45;97m%64s\033[0m\n\033[1;45;97m %-63s\033[0m\n\033[1;45;97m%64s\033[0m\n\n"    '' "foobar" '';)" "$(alert_secondary foobar)"
}

test_alert_success_should_return_expected_string() {
    assert_status_code 127 "$(alert_success)"
    assert_equals "$(printf "\033[0m\n\033[1;42;37m%64s\033[0m\n\033[1;42;37m %-63s\033[0m\n\033[1;42;37m%64s\033[0m\n\n"    '' "foobar" '';)" "$(alert_success foobar)"
}

test_alert_danger_should_return_expected_string() {
    assert_status_code 127 "$(alert_danger)"
    assert_equals "$(printf "\033[0m\n\033[1;41;37m%64s\033[0m\n\033[1;41;37m %-63s\033[0m\n\033[1;41;37m%64s\033[0m\n\n"    '' "foobar" '';)" "$(alert_danger foobar)"
}

test_alert_warning_should_return_expected_string() {
    assert_status_code 127 "$(alert_warning)"
    assert_equals "$(printf "\033[0m\n\033[1;43;97m%64s\033[0m\n\033[1;43;97m %-63s\033[0m\n\033[1;43;97m%64s\033[0m\n\n"    '' "foobar" '';)" "$(alert_warning foobar)"
}

test_alert_info_should_return_expected_string() {
    assert_status_code 127 "$(alert_info)"
    assert_equals "$(printf "\033[0m\n\033[1;44;97m%64s\033[0m\n\033[1;44;97m %-63s\033[0m\n\033[1;44;97m%64s\033[0m\n\n"    '' "foobar" '';)" "$(alert_info foobar)"
}

test_alert_light_should_return_expected_string() {
    assert_status_code 127 "$(alert_light)"
    assert_equals "$(printf "\033[0m\n\033[1;47;90m%64s\033[0m\n\033[1;47;90m %-63s\033[0m\n\033[1;47;90m%64s\033[0m\n\n"    '' "foobar" '';)" "$(alert_light foobar)"
}

test_alert_dark_should_return_expected_string() {
    assert_status_code 127 "$(alert_dark)"
    assert_equals "$(printf "\033[0m\n\033[1;40;37m%64s\033[0m\n\033[1;40;37m %-63s\033[0m\n\033[1;40;37m%64s\033[0m\n\n"    '' "foobar" '';)" "$(alert_dark foobar)"
}
