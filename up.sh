#!/usr/bin/env bash

echo "======> Creating JIRA"
docker-compose up -d

#sleep 60

echo "======> Copying backup file to import location /var/atlassian/jira/import/"
docker cp backups/backup_jira.zip jira:/var/atlassian/jira/import/

docker logs -f jira
# docker run --publish 8080:8080 cptactionhank/atlassian-jira:6.4.11



