FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN rm -rf /etc/apt/sources.list.d/* /usr/share/dotnet /usr/local/lib/android /opt/ghc
RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install $(curl -fsSL git.io/depends-ubuntu-2004) -y
RUN apt-get autoremove --purge
RUN apt-get clean
RUN mkdir -p /workdir

CMD tail -f /dev/null