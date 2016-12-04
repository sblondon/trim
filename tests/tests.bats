#!/usr/bin/env bats


@test "Trim spaces at the start and the end of a line" {
	run bash -c "echo ' test me  ' | ./trim"
    [ "$status" -eq 0 ]
    [ "$output" = "test me" ]
}

@test "Trim tabs at the start and the end of a line" {
	run bash -c "echo '		test	me		' | ./trim"
    [ "$status" -eq 0 ]
    [ "$output" =  "test	me" ]
    [ "${lines[0]}" =  "test	me" ]
}

@test "Trim spaces on several lines" {
	run bash -c "cat tests/multilines.txt | ./trim"
    [ "$status" -eq 0 ]
    [ "${lines[0]}" = "First line" ]
    [ "${lines[1]}" = "Second line" ]
}

@test "Trim spaces only at the start of a line with short argument" {
	run bash -c "echo ' test me  ' | ./trim -s"
    [ "$status" -eq 0 ]
    [ "$output" = "test me  " ]
}

@test "Trim spaces only at the start of a line with long argument" {
	run bash -c "echo ' test me  ' | ./trim --start-line-only"
    [ "$status" -eq 0 ]
    [ "$output" = "test me  " ]
}

