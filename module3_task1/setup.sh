#Variable that contrains folder's name of new hugo site
SITEFOLDER=new_hugo_website

#Installing hugo and make
sudo apt-get update && apt-get install -y hugo make wget 

sudo nvm install v18.2.0

sudo npm install -g markdownlint-cli

sudo npm install -g markdown-link-check

rm -f -R $SITEFOLDER
hugo new site $SITEFOLDER
head -n -1 $SITEFOLDER/config.toml > $SITEFOLDER/temp.txt ; mv $SITEFOLDER/temp.txt $SITEFOLDER/config.toml
echo 'title = "Awesome Inc."' >> $SITEFOLDER/config.toml
echo 'theme = "ananke"' >> $SITEFOLDER/config.toml
echo 'publishdir = "dist"' >> $SITEFOLDER/config.toml
wget https://github.com/theNewDynamic/gohugo-theme-ananke/archive/master.zip
unzip master.zip
mv gohugo-theme-ananke-master $SITEFOLDER/themes/ananke
rm -f master.zip
cd $SITEFOLDER
rm -f config.toml
cd ..
mv $SITEFOLDER/archetypes archetypes
mv $SITEFOLDER/content content
mv $SITEFOLDER/data data
mv $SITEFOLDER/layouts layouts
mv $SITEFOLDER/static static
mv $SITEFOLDER/themes themes
rm -f -R $SITEFOLDER
echo "Site generation succefully!"

