#!/bin/bash
set -e


assert_equals() {
   if [ "$1" == "$2" ]; then
      export EXEC_MODE_UP="MASTER"
   else
      echo "Error!  Assertion  equals ($1) <> ($2),in $3"
      exit 1
   fi
}
