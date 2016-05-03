mkdir /opt/tomcat
groupadd tomcat
useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
wget http://a.mbbsindia.com/tomcat/tomcat-7/v7.0.69/bin/apache-tomcat-7.0.69.tar.gz
tar xvf apache-tomcat-8.0.33.tar.gz
mv apache-tomcat-8.0.33/* /opt/tomcat
rm -r apache-tomcat-8.0.33 apache-tomcat-8.0.33.tar.gz
cd /opt/tomcat
chgrp -R tomcat conf
chmod g+rwx conf
chmod g+r conf/*
chown -R tomcat work/ temp/ logs/


# go to home directory
cd
# create the keys direcotry and ides projects' directory there
mkdir keys IdeaProjects
## setting the key file in keys direcotry - setting it's permission to 400.Setting an alias for this.
# install everything available in the repositories.
sudo apt-get update
sudo apt-get install git subversion maven mysql-client mysql-workbench vim emacs vlc browser-plugin-vlc skype firefox chromium-browser google-chrome-stable
# adding ppa repo for new java version
sudo apt-add-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java6-installer oracle-java7-installer oracle-java8-installer
# sudo update-java-alternatives -s java-8-oracle
# adding repo for scudcloud - Linux client for slack
sudo apt-add-repository -y ppa:rael-gc/scudcloud
sudo apt-get update
sudo apt-get install scudcloud
# setting your own aliases
echo "alias sshstg='ssh -i ~/keys/deepak.k.pem deepak.k@trexstaging.redbus.in'" >> .bashrc
echo "alias ll='ls -l'" >> .bashrc
# few things need to be manually downloaded.
mkdir setup
cd setup
wget -o atom-amd64.zip https://atom.io/download/deb
wget http://a.mbbsindia.com/tomcat/tomcat-7/v7.0.69/bin/apache-tomcat-7.0.69.tar.gz
wget


#Needs to be done:----
#intelliJ IDEA and all the project checkouts from gitlab.
#tomcat-server 7,8 - setting the debug config
#setup the db connection in mysql-workbench and make a bkp of connections.
#atom editor - you will have to download it and then dpkg install.
#creating profile preferences for terminal also.
