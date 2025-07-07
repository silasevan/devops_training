#!/bin/bash
yum update -y
yum install -y httpd php php-mysqlnd mysql wget amazon-efs-utils

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Create mount point for EFS and mount it
mkdir -p /var/www/html
echo "${efs_id}:/ /var/www/html efs defaults,_netdev 0 0" >> /etc/fstab
mount -a

# Download and configure WordPress
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cp -r wordpress/* /var/www/html/
chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html

# Set up wp-config.php
cat > /var/www/html/wp-config.php <<EOF
<?php
define('DB_NAME', '${db_name}');
define('DB_USER', '${db_username}');
define('DB_PASSWORD', '${db_password}');
define('DB_HOST', '${db_endpoint}');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');
\$table_prefix = 'wp_';
define('WP_DEBUG', false);
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');
EOF
