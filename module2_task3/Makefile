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

clean : ##Removes all reports files of the tests, files with "out" extention, 
        ##all files with "log" extention and the binary file of the application
	rm -f awesome-api *.log *.out

test : ##Runs the integration tests and integration tests
	go test -v -short -coverprofile=coverage-units.out
	go test -v -coverprofile=coverage-integrations.out

lint : ##Executing statics checks
	golangci-lint run

unit-tests: ##Execute the unit tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests: ##Execute the integration tests
	go test -v -coverprofile=coverage-integrations.out

help :  ##Prints help about the targets in this makefile
	@echo build : Build the binary file of the application
	@echo run : Run the application in background, and creates the log file
	@echo stop : Kill the application if is runnig
	@echo clean: Removes the binary file, the logs (*.log) files and the reports files (*.out)
	@echo test : Runs the unit and integration tests
	@echo lint : Executing golang lint checks for statics analytics
	@echo unit-tests: Execute the unit tests
	@echo integration-tests: Execute the integrarion tests
	@echo help : Show this help usage
