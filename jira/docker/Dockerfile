#FROM centos:7
FROM airdock/oracle-jdk:1.8

RUN whoami
USER root
#RUN find -name java

# copy files to jira run directory
RUN mkdir /opt/jira
COPY atlassian-jira-software-7.8.4-standalone /opt/jira
RUN ls -la /opt/jira

# create jira home directory
RUN mkdir /opt/jira-home
ENV JIRA_HOME=/opt/jira-home

#RUN java -version

#ENV JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/

#RUN ls -la /opt/jira/jre/bin
RUN ls -la /opt/jira/bin

CMD [ "/opt/jira/bin/start-jira.sh", "-fg" ]



