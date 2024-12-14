FROM google/cloud-sdk:alpine
# Install pip and dependencies
RUN apk add --no-cache python3 py3-pip && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade pyOpenSSL cryptography
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
