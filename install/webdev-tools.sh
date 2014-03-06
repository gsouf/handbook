echo "installing sprite-factory (https://github.com/jakesgordon/sprite-factory)"
sudo apt-get install imageMagick libMagickWand-dev -y
sudo gem install sprite-factory
sudo gem install rmagick

echo "installing png tools : pngq, pngquant and pngcrush"
sudo apt-get install pngcrush -y
sudo apt-get install pngnq -y
sudo apt-get install pngquant -y
