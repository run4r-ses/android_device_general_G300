#!/bin/bash
#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Use maximum gzip compression (level 9 instead of default level 6) in minigzip
# so ramdisk-recovery.img fits comfortably within the 32MB boot partition.
if [ -f external/zlib/contrib/minigzip/minigzip.c ]; then
    sed -i 's/"wb6/"wb9/g' external/zlib/contrib/minigzip/minigzip.c
fi

