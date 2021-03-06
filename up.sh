#!/usr/bin/env bash

# download JIRA if it does not exist
if [ ! -f jira/docker/atlassian-jira-software-7.8.4.tar.gz ]; then
    echo "======> Downloading JIRA"
    wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-software-7.8.4.tar.gz -P jira/docker/
fi

if [ ! -f jira/docker/atlassian-jira-software-7.8.4-standalone ]; then
    echo "======> Extracting JIRA"
    tar -xvzf jira/docker/atlassian-jira-software-7.8.4.tar.gz -C jira/docker/
fi

echo "======> Creating JIRA"
docker-compose build
docker-compose up -d

#sleep 60

# copy backup if it exists
if [ -f backups/backup_jira.zip ]; then
    echo "======> Copying backup file to import location /var/atlassian/jira/import/"
    docker cp backups/backup_jira.zip jira:/var/atlassian/jira/import/
fi

docker logs -f jira




