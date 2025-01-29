FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common
RUN add-apt-repository "deb [trusted=yes] https://download.opensuse.org/repositories/home:/t-paul/xUbuntu_24.04/ ./"
RUN apt-get update && apt-get install -y --no-install-recommends openscad

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
