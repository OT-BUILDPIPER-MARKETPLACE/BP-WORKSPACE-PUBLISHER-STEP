#!/bin/bash
source /opt/buildpiper/shell-functions/aws-functions.sh  
source /opt/buildpiper/shell-functions/file-functions.sh  
source /opt/buildpiper/shell-functions/functions.sh  
source /opt/buildpiper/shell-functions/log-functions.sh  
source /opt/buildpiper/shell-functions/str-functions.sh

WORKSPACE_PUBLISH_DIR="${EXECUTION_DIR}/${EXECUTION_TASK_ID}"
SOURCE_FOLDER="${WORKSPACE}"/"${CODEBASE_DIR}"/"${FOLDER_TO_BE_COPIED}"
logInfoMessage "I'll publish files available at ${SOURCE_FOLDER} to [$WORKSPACE_PUBLISH_DIR]"
cp -r "${SOURCE_FOLDER}" "${WORKSPACE_PUBLISH_DIR}"
sleep  "$SLEEP_DURATION"
