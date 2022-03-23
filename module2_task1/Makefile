build : ##Build the binary application named awesome-api
	golangci-lint run
ifeq (, $(shell golangci-lint run))
	go build
endif

run : ##Run the binary application in background named awesome-api
	./awesome-api > ./awesome-api.log >&1 &

stop : ##Kill the process ID of the binary awesome-api, if the process exists
ifneq (, $(shell pgrep awesome-api))
	kill $(shell pgrep awesome-api)
endif

clean : ##Remove the binary file awesome-api and the text file awesome-api.log
	rm -f awesome-api awesome-api.log

test : ##Test the application, executing first time for fail, second time for success
	curl http://localhost:9999
	curl http://localhost:9999/health

lint : ##Executing checks
	golangci-lint run

help :  ##Prints help about the targets in this makefile
	@echo build : Build the binary file of the application
	@echo run : Run the application in background, and creates the log file
	@echo stop : Kill the application if is runnig
	@echo clean: Removes the binary file and the log file
	@echo test : Test the applicacion, first for fail, second for success
	@echo lint : Executing golang lint checks for statics analytics
	@echo help : Show this help usage
