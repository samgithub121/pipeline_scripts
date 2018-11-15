
# Pull base image.
FROM ubuntu

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
RUN pip3 install virtualenv && pip3 install virtualenvwrapper
ENV JAVA_HOME /usr/lib/jvm/default-java
RUN mkdir /tmp/.X11-unix
RUN chmod 1777 /tmp/.X11-unix
RUN echo "root:npsqm" | chpasswd

# Install jenkins slave jar
RUN mkdir /usr/share/jenkins/ && wget --no-check-certificate https://csw.jp.sie.sony.com:8080/jnlpJars/agent.jar -P /usr/share/jenkins/

# add user
RUN useradd -ms /bin/bash skynet-user && \
    echo "skynet-user:npsqm" | chpasswd && \
    gpasswd -a skynet-user sudo
USER skynet-user
WORKDIR /home/skynet-user
ENV HOME /home/skynet-user

# Install Docker CLI inside container
RUN apt-get update && \
    apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo \"$ID\") \
    $(lsb_release -cs) \
    stable" && \
RUN apt-get update && \
RUN apt-get -y install docker-ce

ENV LANG C.UTF-8
ENV DISPLAY :0
ENV SKYNET_LOG_LEVEL debug

# Define default command.
CMD rm -rf /tmp/.X0-lock ; /usr/bin/Xvfb :0 -screen 0 1024x768x24 >> xvfb.log & java -jar /usr/share/jenkins/agent.jar -noCertificateCheck -jnlpUrl $JNLP_URL -secret $JENKINS_SECRET & /bin/bash
