#!/bin/bash
source /opt/buildpiper/shell-functions/functions.sh
source /opt/buildpiper/shell-functions/log-functions.sh

WORKSPACE_PUBLISH_DIR="${EXECUTION_DIR}/${EXECUTION_TASK_ID}"
logInfoMessage "I'll publish files available at ${FOLDER_TO_BE_COPIED} to [$WORKSPACE_PUBLISH_DIR]"
cp -r "${FOLDER_TO_BE_COPIED}/*" "${WORKSPACE}"/"${WORKSPACE_PUBLISH_DIR}/"
sleep  "$SLEEP_DURATION"
