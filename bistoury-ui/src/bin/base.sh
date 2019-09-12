#!/bin/sh
set -euo pipefail

TIMESTAMP=$(date +%s)
BISTOURY_COF_DIR="$BISTOURY_BIN_DIR/../conf"
BISTOURY_PID_DIR="$BISTOURY_BIN_DIR/../pid"
BISTOURY_LOG_DIR="$BISTOURY_BIN_DIR/../logs"
BISTOURY_CACHE_DIR="$BISTOURY_BIN_DIR/../cache"

if [[ ! -w "$BISTOURY_PID_DIR" ]] ; then
mkdir -p "$BISTOURY_PID_DIR"
fi

if [[ ! -w "$BISTOURY_LOG_DIR" ]] ; then
mkdir -p "$BISTOURY_LOG_DIR"
fi

CLASSPATH="$BISTOURY_COF_DIR"
for i in "$BISTOURY_BIN_DIR"/../lib/*
do
CLASSPATH="$i:$CLASSPATH"
done