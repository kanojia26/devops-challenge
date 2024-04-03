# Use a lightweight Linux distribution as base image
FROM alpine:latest

# Set environment variables
ENV ENERGI_VERSION=v1.1.7
ENV ENERGI_CHECKSUM=63512d132fd80cae9d280541fec8033665dd98a9a8d2e4ff89764e4ea1987554

# Install required packages
RUN apk add --no-cache curl

# Download Energi Node binary
RUN curl -Lo /tmp/energi.tar.gz https://s3-us-west-2.amazonaws.com/download.energi.software/releases/energi3/${ENERGI_VERSION}/energi3-${ENERGI_VERSION}-linux-amd64.tgz

# Verify checksum
RUN echo "${ENERGI_CHECKSUM}  /tmp/energi.tar.gz" | sha256sum -c -

# Extract Energi Node binary
RUN tar -xvzf /tmp/energi.tar.gz -C /opt/ && \
    cd /opt/ && mv energi3-${ENERGI_VERSION}-linux-amd64 energi


# Verfiy Library
RUN ls /opt/energi && ls /opt/energi/bin && pwd
# Clean up
RUN rm /tmp/energi.tar.gz

#Port Expose
EXPOSE 39795 39796 39797 39797/udp

# Set up a non-root user
# RUN addgroup -S energi && adduser -S energi -G energi
# USER energi


# Run the Energi Node client
ENTRYPOINT ["/opt/energi/bin/energi3"]

