FROM alpine:latest

MAINTAINER Allen Vailliencourt

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

# Makes sure zlib can be found
ENV LIBRARY_PATH=/lib:/usr/lib

# Install Python setuptools
RUN pip install -U pip setuptools

# Runs the buld of qrcode
RUN pip install pillow qrcode

WORKDIR /qr
