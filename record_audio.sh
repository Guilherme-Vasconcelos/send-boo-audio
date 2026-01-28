#!/bin/sh

set -eux

ffmpeg -f pulse -i default output.wav
