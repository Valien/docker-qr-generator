FROM alpine:latest

MAINTAINER Allen Vailliencourt allen@valien.net

# Update CA certs
RUN apk --no-cache add  \
    ca-certificates wget\
    && update-ca-certificates

# Add Python & build dependencies for Pillow
RUN apk --no-cache add \
    python \
    py-pip \
    zlib-dev \
    build-base \
    python-dev \
    jpeg-dev

# Makes sure zlib can be found and set variables for QR Text and Filename
ENV LIBRARY_PATH=/lib:/usr/lib \
    QR_TEXT="" \
    QR_FILE=""

# Install Python setuptools
RUN pip install -U \
    pip \
    setuptools \
    pillow \
    qrcode

# Set the directory to store finished QR codes
WORKDIR /qr

# Copy command to run to build QR codes
COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
