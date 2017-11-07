echo "***************************"
echo " "
echo "Hello $USER"
echo " "
echo "***************************"
sudo timedatectl set-timezone Europe/Helsinki
setxkbmap fi
sudo apt update
sudo apt install -y git tree puppet


cd /etc/puppet/modules

sudo git clone https://github.com/Rasmusekmanhh/sshd

sudo puppet apply -e 'class{"sshd":}'

cd
cd /home/xubuntu
sudo rm -r allinone.sh
echo "***************************"
echo " "
echo "Ready to use"
echo " "
echo "***************************"
