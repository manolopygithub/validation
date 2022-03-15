#Variable containning the current date plus the text "Date: "
SDATE='Date: ' $(shell date +%Y/%m/%d)

#Build directive, simple execute the hugo command with 'D' parameter
build : 
	hugo -D	  

#Post directive, remove the /content/posts/$(POST_NAME).md in order to create it again with the variable 'Title'
#passed in command line by the user in the parameter POST_TITLE
post :
	rm -f content/posts/$(POST_NAME).md
	echo '---' >> content/posts/$(POST_NAME).md
	echo 'Title: "$(POST_TITLE)"' >> content/posts/$(POST_NAME).md
	echo $(SDATE) >> content/posts/$(POST_NAME).md
	echo 'draft: True' >> content/posts/$(POST_NAME).md
	echo '---' >> content/posts/$(POST_NAME).md
	#hugo new posts/$(POST_NAME).md

#Clean directive, remove recursivily the dist folder
clean :
	rm -r dist/*

