import os

def mes(message):
    print '\033[92m'+message+'\033[0m'


mes("Staring setup by installing openvpn")

os.system("apt-get update")
os.system("apt-get install -y openvpn")


confirm = raw_input("Continue to install?")
print confirm
if (not confirm == "y"):
    exit()

os.system("mkdir /etc/openvpn/easy-rsa")
os.system("cp -prv /usr/share/easy-rsa/* /etc/openvpn/easy-rsa")
os.system("/bin/bash -c 'cd /etc/openvpn/easy-rsa/; source ./vars; ./clean-all; ./build-ca; ./build-key-server server; ./build-dh; ./build-key client1'")
os.system("cp server.conf /etc/openvpn/server.conf")



