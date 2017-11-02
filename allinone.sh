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

git clone https://github.com/Rasmusekmanhh/sshd

sudo puppet apply -e 'class{"sshd":}'

cd

echo "***************************"
echo " "
echo "Ready to use"
echo " "
echo "***************************"
