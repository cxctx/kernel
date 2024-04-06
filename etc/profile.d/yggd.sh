#!bin/bash
sudo nft -f /etc/nftables/stage1.map
sudo chown -hR tor /etc/tor/
sudo chown -hR tor /var/lib/tor/
sudo bash /etc/profile.d/torrc.sh
sudo setcap cap_net_admin=pe /usr/sbin/yggdrasil
sudo setcap cap_net_admin=pe /usr/sbin/yggdrasilctl
sudo mkdir -p /var/run/yggdrasil/
sudo chown -hR yggdrasil /var/run/yggdrasil/
