FROM openjdk:8

RUN whoami

# copy files to jira run directory
RUN mkdir /opt/jira && cd /opt/jira
COPY atlassian-jira-software-7.8.2 /opt/jira
RUN ls -la /opt/jira

# create jira home directory
RUN mkdir /opt/jira-home
ENV JIRA_HOME=/opt/jira-home


CMD ./opt/jira/bin/start-jira.sh -fg



