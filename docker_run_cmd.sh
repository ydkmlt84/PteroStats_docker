#! /bin/sh
cp /opt/config/config.yml /opt/app/config.yml
echo "Copied Config from Docker volume"
/usr/local/bin/npm install
echo "Install of package completed. Starting bot now."
/usr/local/bin/node index