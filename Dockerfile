# Pull base image.
FROM ubuntu

# set maintainer
LABEL maintainer "sammathewkonni@gmail.com"

# environment variables
ENV http_proxy "http://proxy2.hq.scei.sony.co.jp:10080"
ENV https_proxy "http://proxy2.hq.scei.sony.co.jp:10080"
ENV no_proxy "127.0.0.1,localhost,0.0.0.0,43.0.0.1/8,cswqm.scei.sony.co.jp,csw.jp.sie.sony.com"

# time zone settings
ENV TZ "Asia/Tokyo"
RUN ln -snf /sr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install utils
RUN apt-get update && \
    apt-get install -y --force-yes perl wget curl git mercurial build-essential libssl-dev libbz2-dev libreadline-dev libsqlite3-dev sudo libjpeg8-dev libcurl4-gnutls-dev libgnutls-dev libnss3-dev libgconf2-4 libxss1 sshpass xvfb net-tools vim emacs python-pip python3-pip zip unzip lsof default-jdk jq
