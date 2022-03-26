## Prerequesites

Here are what it needs to have before build the application:

* [Go Hugo v0.80+](https://gohugo.io/)
* [GNU Make in version 3.81+](https://www.gnu.org/software/make/)
* [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli)
* [markdown-link-check](https://www.npmjs.com/package/markdown-link-check)
* [Holberton's W3C Validator](https://github.com/holbertonschool/W3C-Validator)

##  LifeCycle

## 1. Execute the Makefile
1. Execute the command: "make build" in order to create a new site folder.

## 2. Post a Content
1. In order to create a post run the command: "make POST_NAME=post-file-name and POST_TITLE=post-title post".

## 3. Clean the distribution folder
1. Execute the command: "make clean" in order to remove the dist folder.

## 4. Run Check
1. Execute the command: "make check" in order to check the Markdown and analisys of links.

## 5. Run Validate
1. Execute the command: "make validate" in order to run Holberton's W3C Validator.

