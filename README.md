## Prerequesites

Here are what it needs to have before build the web site:

* [Go Hugo v0.80+](https://gohugo.io/)
* [2 GNU Make Docs](https://www.gnu.org/software/make/manual/html_node/index.html)
* [3 Annake Theme](https://themes.gohugo.io/themes/gohugo-theme-ananke/)

##  LifeCycle

## 1. Prepare website's source code
1. Execute the command: hugo new stie new_site_with_hugo.
2. Go into the folder created recently with the previous command.
3. Download the theme Annake, unzip the file downloaded and copy its containts to the folder named themes.
4. Edit the file config.toml, change the title to: "Awesome Inc.".
5. Add a new entry like this: theme = "anneke".
6. Add a new entry like this: publishdir = "dist".

## 2. Execute the Makefile
1. The makefile needed for build the web site is under folder: /home/Vagrant/hugo_web_site.
2. Copy the make file to folder: new_site_with_hugo.
3. Execute the command: make build, it will create a folder named: dist, in which it will be the website.
4. If you modify something, Ex. (new posts, change theme, etc), execute the command: make clean, and then repit the step.


