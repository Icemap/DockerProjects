FROM hub.pingcap.net/jenkins/centos7_golang-1.16:latest

ENV M2_HOME=/usr/local/apache-maven-3.8.6
ENV MAVEN_HOME=/usr/local/apache-maven-3.8.6
ENV JAVA_HOME=/usr/local/jdk-17.0.2
ENV GRADLE_HOME=/usr/local/gradle-7.4.2

ENV PATH=${JAVA_HOME}/bin:${MAVEN_HOME}/bin:${GRADLE_HOME}/bin:${PATH}

COPY openjdk-17.0.2_linux-x64_bin.tar.gz apache-maven-3.8.6-bin.tar.gz \
    gradle-7.4.2-bin.zip init.gradle settings.xml repository.zip /usr/local

RUN sudo mkdir ${HOME}/.gradle && sudo mv /usr/local/init.gradle ${HOME}/.gradle && \
    sudo mkdir ${HOME}/.m2 && sudo mv /usr/local/settings.xml ${HOME}/.m2 && \
    sudo tar -zxf /usr/local/openjdk-17.0.2_linux-x64_bin.tar.gz -C /usr/local && \
    sudo tar -zxf /usr/local/apache-maven-3.8.6-bin.tar.gz -C /usr/local && \
    sudo unzip /usr/local/gradle-7.4.2-bin.zip -d /usr/local && \
    sudo unzip /usr/local/repository.zip -d /usr/local && \
    sudo chown -R jenkins:jenkins /usr/local/repository
