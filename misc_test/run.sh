#! /bin/bash
if !(erlc *.erl); then
    echo "compile source file error!"
    exit 1
fi

OPTS="-smp auto +K true +h 99999"

erl ${OPTS} -noshell -eval "misc_tests:run(), init:stop()"

