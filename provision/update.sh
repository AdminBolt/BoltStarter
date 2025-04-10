# BoltStarter Update Script

echo "Starting BoltStarter update..."

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

echo "BoltStarter is updated!"