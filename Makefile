DIR = $(shell pwd)
RUN = docker run -it -v "$(DIR)":/usr/src/app -w /usr/src/app node:22.2.0
NPX = docker run -it -v "$(DIR)":/usr/src/app -w /usr/src/app node:22.2.0 npx

install:
	$(RUN) npm install

webpack:
	$(RUN) npx webpack --entry ./main.js --output-path build --devtool source-map

.PHONY: install
