# Delete an ip to revoke ssh access from the IP address to hetzner cloud through the Hetzner CLI. This is useful when ip address changed.

hcloud firewall list

read -p "Enter the Firewall ID you want to remove a IP to:" firewallID

hcloud firewall describe $firewallID

read -p "Enter the IP you want to remove your IP to:" ip

hcloud firewall delete-rule --direction in --protocol tcp --port 22 --source-ips $ip/32 $firewallID
