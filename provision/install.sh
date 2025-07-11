# BoltStarter Installation Script

echo "Starting BoltStarter installation..."

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

# Install BoltStarter
cd /usr/local/bolt/plugins/bolt-starter/app/laravel

sudo wget https://getcomposer.org/download/latest-stable/composer.phar
sudo COMPOSER_ALLOW_SUPERUSER=1 bolt-php composer.phar install

bolt-php artisan key:generate
bolt-php artisan migrate --force
bolt-php artisan db:seed --force

echo "Installation successful!"