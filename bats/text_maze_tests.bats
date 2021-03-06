#!/usr/bin/env bats

@test "Showing help" {
  run bin/tp3 --help
  [[ "$output" = *"Usage"* ]]
}

@test "1x1 maze" {
  run bin/tp3 --num-rows 1 --num-cols 1
  [ "${lines[0]}" = "+-+" ]
  [ "${lines[1]}" = "| |" ]
  [ "${lines[2]}" = "+-+" ]
}

@test "1x1 maze with solution" {
  run bin/tp3 --with-solution --num-rows 1 --num-cols 1
  [ "${lines[0]}" = "+-+" ]
  [ "${lines[1]}" = "|X|" ]
  [ "${lines[2]}" = "+-+" ]
}

@test "2x3 maze with solution" {
  run bin/tp3 --with-solution --num-rows 2 --num-cols 3
  [ "${lines[0]}" = "+-+-+-+" ]
  [[ "${lines[1]}" = "|X"* ]]
  [[ "${lines[3]}" = *"X|" ]]
  [ "${lines[4]}" = "+-+-+-+" ]
}
