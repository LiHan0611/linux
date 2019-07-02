read -p "input your ip address or dominname" SEAFILE_SERVER_HOSTNAME
read -p "input your ip address or dominname" SEAFILE_ADMIN_EMAIL
read -p "input your ip address or dominname" SEAFILE_ADMIN_PASSWORD


docker run -d --name seafile \
  -e SEAFILE_SERVER_HOSTNAME=${SEAFILE_SERVER_HOSTNAME} \
  -e SEAFILE_ADMIN_EMAIL=${SEAFILE_ADMIN_EMAIL} \
  -e SEAFILE_ADMIN_PASSWORD=${SEAFILE_ADMIN_PASSWORD} \
  -v /opt/seafile-data:/shared \
  -p 80:80 \
  seafileltd/seafile:latest

