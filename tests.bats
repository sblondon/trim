#!/usr/bin/env bats


@test "Trim spaces at the start and the end of a line" {
	run bash -c "echo ' test me  ' | ./trim"
    [ "$output" = "test me" ]
    [ "${lines[0]}" = "test me" ]
}

@test "Trim tabs at the start and the end of a line" {
	run bash -c "echo '		test	me		' | ./trim"
    [ "$output" =  "test	me" ]
    [ "${lines[0]}" =  "test	me" ]
}

