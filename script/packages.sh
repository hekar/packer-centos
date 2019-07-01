
firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --add-port=8000/tcp --permanent
firewall-cmd --add-port=8001/tcp --permanent
firewall-cmd --reload

yum localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm

yum install -y epel-release
yum install -y git tmux nginx
yum update -y

semanage permissive -a httpd_t
cd /home/codeaira

# wget https://github.com/kimchi-project/kimchi/releases/download/2.5.0/wok-2.5.0-0.el7.centos.noarch.rpm
# wget https://github.com/kimchi-project/kimchi/releases/download/2.5.0/kimchi-2.5.0-0.el7.centos.noarch.rpm
# wget http://kimchi-project.github.io/gingerbase/downloads/latest/ginger-base.el7.centos.noarch.rpm
# wget http://kimchi-project.github.io/ginger/downloads/latest/ginger.el7.centos.noarch.rpm
# yum install -y wok-2.5.0-0.el7.centos.noarch.rpm
# yum install -y kimchi-2.5.0-0.el7.centos.noarch.rpm
# yum install -y ginger-base.el7.centos.noarch.rpm
# yum install -y ginger.el7.centos.noarch.rpm

# sudo systemctl enable wokd
# sudo systemctl start wokd
