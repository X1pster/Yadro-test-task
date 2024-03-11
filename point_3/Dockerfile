FROM ubuntu:focal
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y gawk wget git diffstat \
    unzip texinfo gcc build-essential chrpath socat cpio python3 \
    python3-pip python3-pexpect xz-utils debianutils iputils-ping \
    python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev python3-subunit \
    mesa-common-dev zstd liblz4-tool file locales libacl1 vim \
    qemu-system-x86 iproute2 sudo
RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN groupadd -g 1000 yocto && useradd -u 1000 -g yocto -m yocto
RUN echo 'yocto:yocto' | chpasswd
RUN usermod -aG sudo yocto

COPY . /home/yocto/

USER yocto

CMD /bin/bash
