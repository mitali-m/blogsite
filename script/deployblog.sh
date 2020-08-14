#! /bin/bash

mitalispace_dir=/var/lib/tomcat9/webapps
ls -al $mitalispace_dir

echo "Downloading from storage"
# sudo gsutil cp gs://mnm-storage/blogsite/blogsite.war .

sudo aws s3 cp s3://mitalispace/blogsite.war $mitalispace_dir

echo "Sleeping for 10 sec for the war to get deployed"
sleep 10s
ls -al $mitalispace_dir

echo "Check if the directory is formed and press y to continue"
read var
if [ "$var"="y" ]
then
	echo "Removing the existing root"
	sudo rm -rf $mitalispace_dir/ROOT/
	
	echo "Blogsite is now the new ROOT"
	sudo mv /var/lib/tomcat9/webapps/blogsite $mitalispace_dir/ROOT
	
	sudo rm -rf $mitalispace_dir/blog*.war
	ls -al $mitalispace_dir
	
	echo "Restarting tomcat"
	sudo service tomcat9 stop
	sudo service tomcat9 start
else
	echo "Exiting"

fi
