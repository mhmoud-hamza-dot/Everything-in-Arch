#!/bin/bash
LOG=~/setup.log

log() {
    echo "[$(date '+%H:%M:%S')] $1" | tee -a "$LOG"
}
