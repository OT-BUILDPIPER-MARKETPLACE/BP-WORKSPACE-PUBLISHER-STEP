FROM alpine

RUN apk add --no-cache --upgrade bash
RUN apk add jq

ENV SLEEP_DURATION 5s
ENV EXECUTION_DIR "/bp/execution_dir"
COPY build.sh .
ADD BP-BASE-SHELL-STEPS /opt/buildpiper/shell-functions/

ENV ACTIVITY_SUB_TASK_CODE WORKSPACE-PUBLISHER
ENV FOLDER_TO_BE_COPIED "pipeline-test-android/app/build/reports"
ENTRYPOINT [ "./build.sh" ]