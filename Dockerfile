FROM ubuntu:16.04
# TODO: 18.04

RUN apt-get update && apt-get install -y \
    autoconf \
    bc \
    build-essential \
    cmake \
    cpio \
    git \
    libncurses5-dev \
    locales \
    lzop \
    python \
    unzip \
    vim \
    wget
# Can't remove apt lists -- oss configure script libgtk fails without them and
# installing libgtk takes up way more space than the lists do.

RUN locale-gen --no-purge en_US.UTF-8
COPY . /root/openfang
WORKDIR /root/openfang
ENV OPENFANG_OUTPUT_DIR /output

# TODO: non-root user

CMD ["/root/openfang/buildopenfang.sh"]
