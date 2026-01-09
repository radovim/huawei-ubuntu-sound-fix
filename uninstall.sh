if command -v xbps-install; then
    echo "Stopping daemon..."
    sudo sv down huawei-soundcard-headphones-monitor

    echo "Removing program..."
    sudo rm /usr/local/bin/huawei-soundcard-headphones-monitor.sh

    echo "Removing service..."
    sudo rm -fr /etc/sv/huawei-soundcard-headphones-monitor
    sudo rm /var/service/huawei-soundcard-headphones-monitor
else 
    echo "Stopping daemon..."
    sudo systemctl stop huawei-soundcard-headphones-monitor.service

    echo "Removing program..."
    sudo rm /usr/local/bin/huawei-soundcard-headphones-monitor.sh

    echo "Removing service..."
    sudo rm /etc/systemd/system/huawei-soundcard-headphones-monitor.service
fi
echo "Uninstalled. Goodbye 😿"
