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

src_file="../src/colors/colors_v1.sh"

# shellcheck source=/dev/null
. "${src_file}"

test_script_execution_should_return_expected_status_code() {
    assert_status_code 0 "${src_file}"
}

test_echo_title_return_expected_string() {
    assert_status_code 127 "$(echo_title foobar)"
    assert_equals "$(echo -ne "\033[0;1;42mfoobar\033[0m\n")" "$(echo_title foobar)"
}
test_echo_caption_return_expected_string() {
    assert_status_code 127 "$(echo_caption foobar)"
    assert_equals "$(echo -ne "\033[0;1;44mfoobar\033[0m\n")" "$(echo_caption foobar)"
}
test_echo_bold_return_expected_string() {
    assert_status_code 127 "$(echo_bold foobar)"
    assert_equals "$(echo -ne "\033[0;1;34mfoobar\033[0m\n")" "$(echo_bold foobar)"
}
test_echo_danger_return_expected_string() {
    assert_status_code 127 "$(echo_danger foobar)"
    assert_equals "$(echo -ne "\033[0;31mfoobar\033[0m\n")" "$(echo_danger foobar)"
}
test_echo_success_return_expected_string() {
    assert_status_code 127 "$(echo_success foobar)"
    assert_equals "$(echo -ne "\033[0;32mfoobar\033[0m\n")" "$(echo_success foobar)"
}
test_echo_warning_return_expected_string() {
    assert_status_code 127 "$(echo_warning foobar)"
    assert_equals "$(echo -ne "\033[0;33mfoobar\033[0m\n")" "$(echo_warning foobar)"
}
test_echo_secondary_return_expected_string() {
    assert_status_code 127 "$(echo_secondary foobar)"
    assert_equals "$(echo -ne "\033[0;34mfoobar\033[0m\n")" "$(echo_secondary foobar)"
}
test_echo_info_return_expected_string() {
    assert_status_code 127 "$(echo_info foobar)"
    assert_equals "$(echo -ne "\033[0;35mfoobar\033[0m\n")" "$(echo_info foobar)"
}
test_echo_primary_return_expected_string() {
    assert_status_code 127 "$(echo_primary foobar)"
    assert_equals "$(echo -ne "\033[0;36mfoobar\033[0m\n")" "$(echo_primary foobar)"
}
test_echo_error_return_expected_string() {
    assert_status_code 127 "$(echo_error foobar)"
    assert_equals "$(echo -ne "\033[0;1;31merror:\033[0;31m\tfoobar\033[0m\n")" "$(echo_error foobar)"
}
test_echo_label_return_expected_string() {
    assert_status_code 127 "$(echo_label foobar)"
    assert_equals "$(echo -ne "\033[0;1;32mfoobar:\033[0m\t")" "$(echo_label foobar)"
}
test_echo_prompt_return_expected_string() {
    assert_status_code 127 "$(echo_prompt foobar)"
    assert_equals "$(echo -ne "\033[0;36mfoobar\033[0m ")" "$(echo_prompt foobar)"
}

