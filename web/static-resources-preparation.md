Working with static resources
=============================


Sprites
-------

1. place images to sprite into a directory
2. create sprite with sprite-factory : https://github.com/jakesgordon/sprite-factory (installation requires ``ruby-dev``)
3. compress it with pngquant : http://pngquant.org/

````
sf path/to/spritables --output-style file.css --output-image file.png --layout packed
pngquant file.png --ext .compress.png --force
````
