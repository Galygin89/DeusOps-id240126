#! /usr/bin/env bash
set -e

echo "Install the prerequisites:"
apt install -y curl gnupg2 ca-certificates lsb-release ubuntu-keyring

echo "Import an official nginx signing key so apt could verify the packages authenticity. Fetch the key:"
curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor \
    | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null
    
echo "To set up the apt repository for stable nginx packages, run the following command:"
echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list

echo "To install nginx, run the following commands:"
sudo apt update
sudo apt install nginx=1.26*

systemctl start nginx
systemctl enable --now nginx
systemctl status nginx

echo "View open ports for nginx"
ss -plntu | grep nginx
