#!/usr/bin/env bash

get_operating_system() {
  raw_os_string=$(uname)
  case "$raw_os_string" in
    Linux)
      echo "Linux"
      ;;
    Darwin)
      echo "Mac"
      ;;
    Windows_NT|CYGWIN*|MSYS*)
      echo "Windows"
      ;;
    *)
      echo "Unsupported: $raw_os_string"
      ;;
  esac
}

get_operating_system
