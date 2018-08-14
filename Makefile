NPM ?= npm
NODE?= node
SRC  = $(shell find src -type f)
PUB  = $(shell find public -type f)
APP ?= seb-kade
HOST?= apps.sebastiankade.com

all: build

deploy: build
	tar -c build | ssh dokku@$(HOST) tar:in $(APP)

restart:
	ssh dokku@$(HOST) ps:restart $(APP)

build: build/index.html

setup:
	$(NPM) install

build/index.html: public/index.html $(SRC) $(PUB)
	$(NPM) run build

start:
	$(NPM) run start

clean:
	-rm -r build

clean-full:
	-make clean
	-rm -r node_modules

.PHONY: setup start deploy restart clean clean-full
