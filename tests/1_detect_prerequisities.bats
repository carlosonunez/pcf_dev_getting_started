#!/usr/bin/env bats
load stubbing

@test "Detect the operating system that we are running on" {
  stub cat "Linux"
  run scripts/get_operating_system
  [ "$output" == "Linux" ]
}
