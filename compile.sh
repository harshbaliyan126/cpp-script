#!/bin/bash

FILE_EXTENSIOn="$(echo "$1" | sed "s/.*[^cpp]//g")"
FILE_NAME="$(echo "$1" | sed "s/\(.*\).cpp/\1/g")"

if [[ "${FILE_EXTENSIOn}" = "cpp" ]]; then
    g++ -std=c++11 -O2 -Wall $FILE_NAME.cpp -o $FILE_NAME
    if [[ $? -eq 1 ]]; then
	exit 502
    fi
fi

./$FILE_NAME
