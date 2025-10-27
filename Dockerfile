FROM    telegraf:1.36.3-alpine

LABEL   org.opencontainers.image.title="promagent"
LABEL   org.opencontainers.image.source="https://github.com/metrasensor/promagent"
LABEL   org.opencontainers.image.licenses="MIT"

ARG     EMPTY
ENV     PROJECT_UUID=$EMPTY
ENV     SENSOR_NAME=$EMPTY
ENV     RECEIVER_HOST=receiver.metrasensor.com
ENV     PROMETHEUS_HOST=$EMPTY

COPY    telegraf.conf /etc/telegraf/

CMD     ["telegraf"]
