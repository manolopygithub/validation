#
#Variable containnig the current date plus the text "Date: "
SDATE='Date: ' $(shell date +%Y/%m/%d)

build : ##Build the site in dist folder, the folder dist is set as the publish directory in config.toml file
	hugo -D	  

post :  ##Create a new post which file name is passed in the environment POST_NAME
	rm -f content/posts/$(POST_NAME).md
	echo '---' >> content/posts/$(POST_NAME).md
	echo 'Title: "$(POST_TITLE)"' >> content/posts/$(POST_NAME).md
	echo $(SDATE) >> content/posts/$(POST_NAME).md
	echo 'draft: True' >> content/posts/$(POST_NAME).md
	echo '---' >> content/posts/$(POST_NAME).md

clean : ##Remove all files and folders from the dist directory
	rm -r dist/*

check:  ##Lint of the Markdown welcome.md file using the command line markdownlint-cli and
	##Analysis of the links with the command line markdown-link-check
	markdownlint content/posts/welcome.md
	markdown-link-check content/posts/welcome.md

validate:##Validate the file index.html
	w3c_validator.py dist/index.html

help :  ##Prints help about the targets in this makefile
	@echo build : Build the site in dist folder, the folder dist is set as the publish directory in config.toml file
	@echo post : Create a new post which file name is passed in the environment POST_NAME
	@echo clean : Remove all files and folders from the dist directory
	@echo cehck : Lint of the Markdown welcome.md file and analysis of the links.
	@echo validate : Validate the file index.html using w3c_validator.
	@echo help : Show this help usage

