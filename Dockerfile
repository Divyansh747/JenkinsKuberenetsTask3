FROM centos

RUN	yum install sudo -y

RUN	yum install net-tools -y

RUN	yum install httpd -y

RUN	yum install systemd -y

RUN	yum install git -y

RUN	sudo mkdir /git

RUN	cd /git

RUN	git clone https://github.com/Divyansh747/JenkinsKuberenetsTask3.git

RUN	cp -f index.html /var/www/html/

RUN	/usr/sbin/httpd $OPTIONS -DFOREGROUND

