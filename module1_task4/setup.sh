#Variable that contrains folder's name of new hugo site
SITEFOLDER=new_site_with_hugo

#Installing hugo and make
#apt-get update && apt-get install -y hugo make wget

rm -f -R $SITEFOLDER
hugo new site $SITEFOLDER
head -n -1 $SITEFOLDER/config.toml > $SITEFOLDER/temp.txt ; mv $SITEFOLDER/temp.txt $SITEFOLDER/config.toml
echo 'title = "Awesome Inc."' >> $SITEFOLDER/config.toml
#echo 'theme = "ananke"' >> $SITEFOLDER/config.toml
echo 'publishdir = "dist"' >> $SITEFOLDER/config.toml
#wget https://github.com/theNewDynamic/gohugo-theme-ananke/archive/master.zip
#unzip master.zip
#mv gohugo-theme-ananke-master $SITEFOLDER/themes/ananke
#rm -f master.zip
cp Makefile $SITEFOLDER/Makefile
cd $SITEFOLDER
make build
echo "Site generation succefully!"

