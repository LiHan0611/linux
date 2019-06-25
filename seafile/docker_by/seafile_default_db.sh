sudo yum update -y \
&& sudo yum remove docker  docker-common docker-selinux docker-engine \
&& sudo yum install -y yum-utils device-mapper-persistent-data lvm2 \
&& sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo \
&& sudo yum install -y docker-ce \
&& sudo systemctl start docker \
&& sudo systemctl enable docker

read -p "input your IP address or dominname: " SEAFILE_SERVER_HOSTNAME
read -p "input administrator acount e-mail: " SEAFILE_ADMIN_EMAIL
read -p "input administartor password: " SEAFILE_ADMIN_PASSWORD

docker run -d --name seafile \
  -e SEAFILE_SERVER_HOSTNAME=${SEAFILE_SERVER_HOSTNAME} \
  -e SEAFILE_ADMIN_EMAIL=${SEAFILE_ADMIN_EMAIL} \
  -e SEAFILE_ADMIN_PASSWORD=${SEAFILE_ADMIN_PASSWORD} \
  -v /opt/seafile-data:/shared \
  -p 80:80 \
  seafileltd/seafile:latest


