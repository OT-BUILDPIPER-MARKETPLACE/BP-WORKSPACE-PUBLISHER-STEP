FROM alpine

RUN apk add --no-cache --upgrade bash
RUN apk add jq

ENV SLEEP_DURATION 5s
COPY build.sh .
ADD BP-BASE-SHELL-STEPS /opt/buildpiper/shell-functions/

ENV ACTIVITY_SUB_TASK_CODE WORKSPACE-PUBLISHER

ENTRYPOINT [ "./build.sh" ]