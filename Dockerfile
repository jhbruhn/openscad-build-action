FROM ubuntu:24.04

RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common
RUN add-apt-repository "deb https://download.opensuse.org/repositories/home:/t-paul/xUbuntu_24.04/ ./"
RUN apt-get update && apt-get install -y --no-install-recommends openscad-nightly

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
