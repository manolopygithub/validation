build : ##Build the site in dist folder, the folder dist is set as the publish directory in config.toml file
	hugo -D	  

post :  ##Create a new post which file name is passed in the environment POST_NAME
	hugo new posts/$(POST_NAME)

clean : ##Remove all files and folders from the dist directory
	rm -r dist/*

help :  ##Prints help about the targets in this makefile
	@echo build : Build the site in dist folder, the folder dist is set as the publish directory in config.toml file
	@echo post : Create a new post which file name is passed in the environment POST_NAME
	@echo clean : Remove all files and folders from the dist directory
	@echo help : Show this help usage

