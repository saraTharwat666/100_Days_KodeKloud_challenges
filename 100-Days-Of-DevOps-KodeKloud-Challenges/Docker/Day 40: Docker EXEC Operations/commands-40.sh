# 1. Connect to App Server 03
ssh banner@stapp03

# 2. Install Apache Web Server inside the container kkloud and configure it to listen on port 8087
sudo -i
docker exec -it kkloud bash -c '
  apt-get update && \
  apt-get install -y apache2 && \
  sed -i "s/Listen 80/Listen 8087/" /etc/apache2/ports.conf && \
  sed -i "s/<VirtualHost \*:80>/<VirtualHost *:8087>/" /etc/apache2/sites-available/000-default.conf && \
  apachectl start
'

# 3. Verify Apache is listening on port 8087 inside the container kkloud
docker exec kkloud grep -E 'Listen' /etc/apache2/ports.conf
# Listen 8087
#         Listen 443
#         Listen 443

docker exec kkloud grep -E 'VirtualHost' /etc/apache2/sites-available/000-default.conf
# <VirtualHost *:8087>
# </VirtualHost>

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' kkloud
# 172.12.0.2
curl -I http://172.12.0.2:8087
# HTTP/1.1 200 OK
# Date: Thu, 02 Oct 2025 13:57:50 GMT
# Server: Apache/2.4.29 (Ubuntu)
# Last-Modified: Thu, 02 Oct 2025 13:52:05 GMT
# ETag: "2aa6-6402d4a5cc25b"
# Accept-Ranges: bytes
# Content-Length: 10918
# Vary: Accept-Encoding
# Content-Type: text/html