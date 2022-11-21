#!/bin/bash
source /opt/buildpiper/shell-functions/functions.sh
source /opt/buildpiper/shell-functions/log-functions.sh

WORKSPACE_DIR="${EXECUTION_DIR}/${EXECUTION_TASK_ID}"
logInfoMessage "I'll publish files to  [$WORKSPACE_DIR]"
sleep  "$SLEEP_DURATION"
