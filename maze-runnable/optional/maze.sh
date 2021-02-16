#!/bin/sh

SCRIPT_DIR="$(cd "$(dirname "$0")"; pwd)"
TOP_DIR="$(dirname "$SCRIPT_DIR")"
wine "$TOP_DIR"/applewin/Applewin.exe \
    -conf $(winepath --windows "$TOP_DIR"/config/maze.ini) \
    -d1 $(winepath --windows "$TOP_DIR"/disks/maze.dsk) \
    -current-dir $(winepath --windows "$TOP_DIR") \
    -m "$@"
