encodeTo="UTF-8"
 
# CHANGE THE PATTERN IF NEEDED
for filename in ` find . -type f -name "*.php"`
 
do
echo $filename
    enc=`file -bi $filename | awk -F"charset=" '{print $2}'`
    iconv -f $enc -t $encodeTo $filename -o $filename
done
