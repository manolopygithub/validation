#
#Variable containnig the current date plus the text "Date: "
SDATE='Date: ' $(shell date +%Y/%m/%d)

hugo-build: 
	hugo -D

go-build:
	go build

build : hugo-build go-build ##Calls hugo-build target firsts and then go-build

run: ##Build de application binary awesome-api
	./awesome-api > ./awesome-api.log >&1 &

stop: ##Stop de application awesome-api if is running
ifneq (, $(shell pgrep awesome-api))
	kill $(shell pgrep awesome-api)
endif

clean : stop  ##Call stop target first and then removes all files into dist folder, awesome-api, *.log and *.out files
	rm -f -r dist/*
	rm -f awesome-api *.log *.out

lint:   ##Lint of the Markdown welcome.md file using the command line markdownlint-cli and
	##Analysis of the links with the command line markdown-link-check
	markdownlint content/posts/welcome.md
	markdown-link-check content/posts/welcome.md
	golangci-lint run

test:  ##Runs the units tests, the integration tests and the w3c validator
	go test -v -short -coverprofile=coverage-units.out
	go test -v -coverprofile=coverage-integrations.out
	w3c_validator.py dist/index.html

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

