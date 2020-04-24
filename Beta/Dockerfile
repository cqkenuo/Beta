FROM centos:7
MAINTAINER "nzjdsds@qq.com"
RUN rpm --import /etc/pki/rpm-gpg/RPM*
RUN yum install -y wget
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak
RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN wget -P /etc/yum.repos.d/ http://mirrors.aliyun.com/repo/epel-7.repo
RUN yum clean all
RUN yum makecache
RUN cd /root
RUN wget https://npm.taobao.org/mirrors/python/3.6.3/Python-3.6.3.tgz \
    && tar -zxvf Python-3.6.3.tgz \
	&& cd Python-3.6.3\
	&& yum -y install gcc automake unzip autoconf libtool make  openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite*-devel mysql-devel vim \
	&& ./configure \
	&& make \
	&& make install \
	&& mkdir /root/Beta \
	&& cd /root/Beta \
	&& python3 -m pip install django==2.2.7 -i https://pypi.doubanio.com/simple/ \
	&& python3 -m pip install mysqlclient -i https://pypi.doubanio.com/simple/ \
	&& python3 -m pip install uwsgi -i https://pypi.doubanio.com/simple/ \
	&& python3 -m pip install celery -i https://pypi.doubanio.com/simple/ \
	&& python3 -m pip install redis -i https://pypi.doubanio.com/simple/ \
	&& python3 -m pip install django-celery-results -i https://pypi.doubanio.com/simple/ \
	&& python3 -m pip install django-celery-beat -i https://pypi.doubanio.com/simple/ \
	&& python3 -m pip install eventlet -i https://pypi.doubanio.com/simple/ \
	&& rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm \
	&& yum install -y nginx 
