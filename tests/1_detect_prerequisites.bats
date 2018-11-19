#!/usr/bin/env bats
load helpers/stubbing
load helpers/errors

@test "Detect the operating system that we are running on" {
  stub uname "echo 'Linux'"
  run scripts/detect_operating_system.sh
  display_additional_info
  [ "$output" == "Linux" ]
}
