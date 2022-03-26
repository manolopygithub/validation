## Prerequesites

Here are what it needs to have before build the application:

* [Golang v1.15.+](https://go.dev/)
* [GNU Make in version 3.81+](https://www.gnu.org/software/make/)

##  LifeCycle

## 1. Prepare the source folder
1. Create a folder named awesome-api.
2. Go into the folder recently created and execute the command: "go mod init github.com/<your github handle>/awesome-api".
3. Execute the command: "god mod tidy".
4. Copy the file main.go into the awesome-api folder.
5. Copy the file Makefile into the awesome-api folder.

## 2. Execute the Makefile
1. Execute the command: "make build", it will create the binary file called awesome-api.
2. To run the application execute the command: "make run", it will execute the application in backgruond and the log file    along with it. The HTTP server will listing on port 9999.
3. To test the application, execute the command: "make test", that will make a "curl" on the home page (which is not exist   s), and a "curl" on /health which reponds will be "ALIVE".

## 3. Stop the applicaction
1. If you want to stop the applicarion, execute the command: "make stop".

## 4. Clean Everything
1. Execute the command: "make clean" in order to remove the binary file and the log file.

