FROM jenkins/jenkins:lts

ENV PHP_VERSION 7.3
USER root

RUN apt update && \
    apt upgrade -y && \
    apt install -y lsb-release apt-transport-https ca-certificates && \
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php$PHP_VERSION.list && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt update && \
    apt upgrade -y && \
    apt install -y \
        nodejs \
        php$PHP_VERSION \
        php$PHP_VERSION-common \
        php$PHP_VERSION-opcache \
        php$PHP_VERSION-cli \
        php$PHP_VERSION-gd \
        php$PHP_VERSION-curl && \
    npm install -g yarn n && \
    n latest && \
    apt autoclean && \
    apt clean && \
    apt autoremove
    
        
# USER jenkins

VOLUME /var/jenkins_home
