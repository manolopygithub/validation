build : 
	hugo -D	  

post : 
	rm archetypes/posts.md
	echo '---' >> archetypes/posts.md
	echo 'Title: "$(POST_TITLE)"' >> archetypes/posts.md
	echo 'Date: {{ .Date }}' >> archetypes/posts.md
	echo 'draft: True' >> archetypes/posts.md
	echo '---' >> archetypes/posts.md
	rm content/posts/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md

clean :
	rm -r dist/*

