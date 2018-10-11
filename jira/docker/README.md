##

You need to download the version of JIRA standalone you want to use.
They're the ones marked 'TAR.GZ archive' in the archives (https://www.atlassian.com/software/jira/download-archives])
Once downloaded, extract it to this directory.
You should have a folder structure something like:

<pre>
ansible-jira-6.4.11-standalone
   atlassian-jira
   bin
   .. etc.
</pre>

This folder structure is copied into the image in the Dockerfile in this folder.

Then you need to copy the mysql-connector jar file into the 'lib' folder.


