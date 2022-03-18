# Delete your current ip to revoke ssh access from the IP address to hetzner cloud through the Hetzner CLI.

ip=$(curl http://icanhazip.com)

hcloud firewall list

read -p "Enter the Firewall ID you want to remove your IP to:" firewallID

hcloud firewall delete-rule --direction in --protocol tcp --port 22 --source-ips $ip/32 $firewallID
