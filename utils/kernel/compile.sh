#!/bin/bash

$MAKE_EXEC bindeb-pkg -j$(nproc) LOCALVERSION="-${TARGET_PROFILE}"
