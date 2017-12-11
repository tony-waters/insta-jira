FROM openjdk:8

# copy files to jira run directory
RUN mkdir /opt/jira && cd /opt/jira
COPY jira-6.4.11-standalone /opt/jira
RUN ls -la /opt/jira

# create jira home directory
RUN mkdir /opt/jira-home
ENV JIRA_HOME=/opt/jira-home


CMD ./opt/jira/bin/start-jira.sh -fg



