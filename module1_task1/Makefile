#Build directive, simple execute the hugo command with 'D' parameter
build : 
	hugo -D	  

#Post directive, remove the posts.md in order to create it again with the variable 'Title'
#passed in command line by the user in the parameter POST_TITLE, remove the post with filename
#passed in command line by the user in the parameter POST_NAME, and last execute the hugo new
#in order to create a new post
post : 
	rm archetypes/posts.md
	echo '---' >> archetypes/posts.md
	echo 'Title: "$(POST_TITLE)"' >> archetypes/posts.md
	echo 'Date: {{ .Date }}' >> archetypes/posts.md
	echo 'draft: True' >> archetypes/posts.md
	echo '---' >> archetypes/posts.md
	rm content/posts/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md

#Clean directive, remove recursivily the dist folder
clean :
	rm -r dist/*

