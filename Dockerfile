FROM centos

RUN	yum install sudo -y

RUN	yum install net-tools -y

RUN	yum install httpd -y

RUN	yum install git -y

RUN	git clone https://github.com/Divyansh747/JenkinsKuberenetsTask3.git  /var/www/html/

CMD	sudo /usr/sbin/httpd  -DFOREGROUND

EXPOSE	8080
EXPOSE	80

