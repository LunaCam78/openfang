FROM ubuntu:16.04

RUN \
  apt update && apt upgrade -y && \
  apt install -y \
  build-essential \
  git \
  autoconf \
  cmake \
  python \
  unzip \
  cpio \
  wget \
  vim \
  locales \
  lzop \
  bc \
  libncurses5-dev \
  ccache \
  gawk \
  libgtk2.0-dev \
  lzop \
  bc\
   gcc-mips-linux-gnu \
RUN locale-gen --no-purge en_US.UTF-8
COPY . /root/borgfang/
WORKDIR /root/borgfang