#!/bin/bash

mkdir -p $OUTPUT_DIR/deb $OUTPUT_DIR/deb-dbg

cp work/*.deb $OUTPUT_DIR/deb
find $OUTPUT_DIR/deb/ -type f -name "*.deb" | grep '\-dbg_' | xargs -I @ mv @ $OUTPUT_DIR/deb-dbg/

