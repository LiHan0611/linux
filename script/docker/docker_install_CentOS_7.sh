sudo yum update
&& sudo yum remove docker  docker-common docker-selinux docker-engine
&& sudo yum install -y yum-utils device-mapper-persistent-data lvm2
&& sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
&& sudo yum install -y docker-ce
&& sudo systemctl start docker
&& sudo systemctl enable docker

# docker-compose
&& curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
&& chmod +x /usr/local/bin/docker-compose
