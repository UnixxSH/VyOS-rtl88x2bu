FROM debian:latest
WORKDIR /build
RUN apt update
RUN apt install \
    ca-certificates \
    dkms \
    git \
    gcc \
    debhelper \
    bc -y
RUN echo "deb [trusted=yes] http://dev.packages.vyos.net/repositories/sagitta sagitta main" > /etc/apt/sources.list.d/vyos.list
RUN apt update
RUN apt install linux-headers-6.6.21-amd64-vyos -y
ADD ./build.sh /build/build.sh
RUN chmod 755 /build/build.sh
ENTRYPOINT ["tail", "-f", "/dev/null"]
