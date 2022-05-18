#
#Variable containnig the current date plus the text "Date: "
SDATE='Date: ' $(shell date +%Y/%m/%d)

build: 
	hugo -D

clean : stop  ##Call stop target first and then removes all files into dist folder, awesome-api, *.log and *.out files
	rm -f -r dist/*
	rm -f awesome-api *.log *.out

lint:   ##Lint of the Markdown welcome.md file using the command line markdownlint-cli and
	##Analysis of the links with the command line markdown-link-check
	markdownlint content/posts/welcome.md
	markdown-link-check content/posts/welcome.md
	golangci-lint run
	shellcheck setup.sh

unit-tests: ##Runs the units tests
	go test -v -short -coverprofile=coverage-units.out

validate: ##Runs w3c validator
	w3c_validator.py dist/index.html

integration-tests: ##Runs Integration Tests
	go test -v --coverprofile=coverage-integrations.out

help :  ##Prints help about the targets in this makefile
	@echo hugo-build: Build the site in dist folder.
	@echo go-build: Build the binary application awesome-api.
	@echo build : Build the site in dist folder and binary aaplication awesome-api.
	@echo run : Runs the application awesome-api in background.
	@echo stop : Stops the application awesome-api if is running.
	@echo clean : Stops the applications if is running, and the remves the binary, *.log and *.out files.
	@echo lint : Runs lint tests and link checks to content/posts/welcome.md file, and lint tests to main.go file.
	@echo test : Runs unit tests, integration tests and w3c validator.
	@echo help : Show this help usage

