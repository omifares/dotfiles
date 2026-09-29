#!/usr/bin/env bash

CONTAINER_NAME="gonic"
IDLE_TIME="30m"
if ! docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    logger -t smart-suspend "Container $CONTAINER_NAME não está rodando. Suspendendo..."
    systemctl suspend
    exit 0
fi

last_activity=$(docker logs --since "$IDLE_TIME" "$CONTAINER_NAME" 2>&1 | grep -iE '(/rest/stream|/rest/scrobble|/rest/getSong|/rest/ping|/rest/getNowPlaying|HTTP)' | wc -l)
if [ "$last_activity" -gt 0 ]; then
    logger -t smart-suspend "Gonic teve $last_activity requisições nos últimos $IDLE_TIME. Suspensão abortada."
    exit 0
fi

logger -t smart-suspend "Gonic inativo há mais de $IDLE_TIME. Suspendendo o PC..."
systemctl suspend
