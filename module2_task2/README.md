## Prerequesites

Here are what it needs to have before build the application:

* [Golang v1.15.+](https://go.dev/)
* [GNU Make in version 3.81+](https://www.gnu.org/software/make/)

##  LifeCycle

## 1. Execute the Makefile
1. Execute the command: "make build", it will create the binary file called awesome-api, but before created the binary, it   will execute a lint check, if it was success then it will build; it was fail; it shows the lint check message.
2. To run the application execute the command: "make run", it will execute the application in backgruond and the log file    along with it. The HTTP server will listing on port 9999.
3. To test the application, execute the command: "make test", that will make a "curl" on the home page (which is not exist   s), and a "curl" on /health which reponds will be "ALIVE".

## 2. Stop the applicaction
1. If you want to stop the applicarion, execute the command: "make stop".

## 3. Clean Everything
1. Execute the command: "make clean" in order to remove the binary file and the log file.

## 4. Run Lint Check
1. Execute the command: "make lint" in order to run static analysis of the source code.

## 5. Run Unit Test
1. Execute the command: "make unit-tests" in order to run the unit test based on file main_test.go.

