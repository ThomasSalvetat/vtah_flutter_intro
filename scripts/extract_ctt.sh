#!/usr/bin/env bash

flutter pub run build_runner build
rm assets/ctt/*.txt
mv lib/**/*.ctt.txt assets/ctt