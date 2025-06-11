FROM alpine:3.18

# Install necessary tools: curl, tar, and gettext for envsubst
RUN apk add --no-cache curl tar gettext

# Set Alertmanager version
ENV ALERTMANAGER_VERSION=0.28.1

# Download and extract Alertmanager
RUN curl -L https://github.com/prometheus/alertmanager/releases/download/v${ALERTMANAGER_VERSION}/alertmanager-${ALERTMANAGER_VERSION}.linux-amd64.tar.gz \
    | tar -xz && \
    mv alertmanager-${ALERTMANAGER_VERSION}.linux-amd64/alertmanager /bin/alertmanager && \
    chmod +x /bin/alertmanager && \
    rm -rf alertmanager-${ALERTMANAGER_VERSION}.linux-amd64

# Copy custom entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose default Alertmanager port
EXPOSE 9093

ENTRYPOINT ["/entrypoint.sh"]