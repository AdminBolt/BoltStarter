# BoltStarter Uninstallation Script

echo "Starting BoltStarter uninstallation..."

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

# Remove BoltStarter directory
if [ -d "/usr/local/bolt/apps/boltstarter" ]; then
    rm -rf /usr/local/bolt/apps/boltstarter
    echo "BoltStarter directory removed."
else
    echo "BoltStarter directory not found."
fi