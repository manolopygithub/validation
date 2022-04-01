## Prerequesites

Here are what it needs to have before build and test the application:

* [Go Hugo v0.80+](https://gohugo.io/)
* [GNU Make in version 3.81+](https://www.gnu.org/software/make/)
* [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli)
* [markdown-link-check](https://www.npmjs.com/package/markdown-link-check)
* [Holberton's W3C Validator](https://github.com/holbertonschool/W3C-Validator)

##  LifeCycle

## 1. Execute the Build
1. Execute the command: "make build" in order to create a new site folder and application binary.

## 2. Run
1. Start the application in background so that http://localhost:9999/posts/welcome/ is reachable.

## 3. Stop
1. Stop the application.

## 4. Lint
1. Executes all of the lint steps.

## 5. Test
1. Executes all of the testing targets (unit-tests, integration-tests and validate).

## 6. Clean
1.  Deletes all the generated files (logs, test reports, distribution directory, etc.) and stops the application.

## 7. Help
1. Printts target help.

