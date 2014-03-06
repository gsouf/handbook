sudo apt-get update -y
sudo apt-get upgrade -y
 
 
mkdir $HOME/bin
PATH=$PATH:$HOME/bin
 
 
mkdir $HOME/Documents/trash/
echo "rm $HOME/Documents/trash/* -rf" > $HOME/bin/empty-my-trash
chmod +x $HOME/bin/empty-my-trash
echo "trash dir created. empty-my-trash command created. Add this command to your startup script"
 
 
echo "installing vim"
sudo apt-get install vim -y
 
echo "Installing git..."
sudo apt-get install git -y
 
echo "Installing locate..."
sudo apt-get install locate -y
 
 
 
 
 
 
 
 
echo "installing Guake Terminal"
sudo apt-get install guake -y
 
 
echo "installing chromium"
sudo apt-get install chromium-browser -y
 
 
echo "Installing Virtualbox..."
sudo apt-get install virtualbox -y
 
echo "Installing VLC..."
sudo apt-get install vlc -y
 
echo "Installing Pidgin..."
sudo apt-get install pidgin
 
 
 
 
echo "Dev Tools"
 
echo "Installing php5"
sudo apt-get install php5 php5-mysql -y
 
 
echo "Preparing composer command"
curl -sS https://getcomposer.org/installer | php -- --install-dir=$HOME/bin
mv $HOME/bin/composer.phar $HOME/bin/composer
chmod +x $HOME/bin/composer
sudo ln -s $HOME/bin/composer /usr/local/bin/composer
 
 
echo "Installing Pear"
curl -sS http://pear.php.net/go-pear.phar | php
sudo pear config-set auto_discover 1
sudo apt-get install php-pear -y
 
 
echo "Installing phpUnit"
sudo pear channel-discover pear.phpunit.de
sudo pear install pear.phpunit.de/PHPUnit
 
 
 
 
 
 
 
 
echo "Installing mysql"
sudo apt-get install mysql-server -y
 
 
echo "Installing mysql WorkBench"
sudo apt-get install mysql-workbench
 
 
echo "Installing apache2"
sudo apt-get install apache2 -y
 
 
 
 
 
sudo updatedb
