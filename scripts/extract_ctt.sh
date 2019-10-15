#!/usr/bin/env bash

flutter pub run build_runner build
mv lib/**/*.ctt.txt assets/ctt