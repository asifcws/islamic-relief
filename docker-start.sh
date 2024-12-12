#!/bin/sh
set -e

# Run in the path below
cd /usr/share/nginx/html

echo "Running migrations..."
php artisan migrate --force

echo "Running php-fpm web..."
php-fpm