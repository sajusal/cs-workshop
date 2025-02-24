ip link add link eth1 name eth1.12 type vlan id 12
ip addr add 12.12.12.100/24 dev eth1.12
ip link set eth1.12 up

ip link add link eth1 name eth1.34 type vlan id 34
ip addr add 34.34.34.100/24 dev eth1.34
ip link set eth1.34 up

ip link add link eth1 name eth1.56 type vlan id 56
ip addr add 56.56.56.100/24 dev eth1.56
ip link set eth1.56 up

ip link add link eth1 name eth1.78 type vlan id 78
ip addr add 78.78.78.100/24 dev eth1.78
ip link set eth1.78 up

ip link add link eth1 name eth1.90 type vlan id 90
ip addr add 90.90.90.100/24 dev eth1.90
ip link set eth1.90 up

ip link add link eth1 name eth1.112 type vlan id 112
ip addr add 112.112.112.100/24 dev eth1.112
ip link set eth1.112 up

