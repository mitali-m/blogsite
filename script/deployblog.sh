#! /bin/bash

cd /var/lib/tomcat9/webapps
ls -al
echo "Downloading from storage"
sudo gsutil cp gs://mnm-storage/blogsite/blogsite.war .
echo "Sleeping for 10 sec for the war to get deployed"
sleep 10s
ls -al
echo "Check if the directory is formed and press any key to continue"
read var
echo "Removing the existing root"
sudo rm -rf ROOT/
echo "Blogsite is now the new ROOT"
sudo mv blogsite ROOT
sudo rm -rf blog*.war
ls -al
echo "Restarting tomcat"
sudo service tomcat9 stop
sudo service tomcat9 start