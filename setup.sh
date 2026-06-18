#!/bin/bash
set -e
set -u

source ./utils.sh

log "  >>>installing..."

source ./services.sh
source ./install.sh
source ./config.sh

log "DONE!"
