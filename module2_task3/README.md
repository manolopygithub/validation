## Prerequesites

Here are what it needs to have before build the application:

* [Golang v1.15.+](https://go.dev/)
* [2 GNU Make Docs](https://www.gnu.org/software/make/manual/html_node/index.html)

##  LifeCycle

## 1. Execute the Makefile
1. Execute the command: "make build", it will create the binary file called awesome-api, but before created the binary, it will execute a lint check, if it was success then it will build; it was fail; it shows the lint check message.
2. To run the application execute the command: "make run", it will execute the application in backgruond and the log file along with it. The HTTP server will listing on port 9999.

## 2. Stop the applicaction
1. If you want to stop the applicarion, execute the command: "make stop".

## 3. Clean Everything
1. Execute the command: "make clean" in order to remove the binary file, log file (*.log) and testing repots files (*.out).

##4. Run Lint Check
1. Execute the command: "make lint" in order to run static analysis of the source code.

##5. Run Unit Test
1. Execute the command: "make unit-tests" in order to run the unit test based on file main_test.go.

##6. Run Integration Test
1. Execute the command: "make integration-tests" in order to run the integration test based on file main_integration_test.go.

##7. Run Tests
1. Executing the command: "make tests" will be execute both tests, unit test and integration test.

