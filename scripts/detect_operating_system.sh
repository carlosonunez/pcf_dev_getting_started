#!/usr/bin/env bash

get_operating_system() {
  case uname in
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
      echo "Unsupported"
      ;;
  esac
}

get_operating_system
