DIR=$(shell pwd)

all: setupbin install

setupbin:
	mkdir -p ~/bin

install:
	#setup file
	$(shell echo "PWD=$(PWD) #This was added by the makefile" > ~/bin/rotatingwp.sh)
	$(shell cat $(DIR)/scripts/rotatingwp.sh >> ~/bin/rotatingwp.sh)
	chmod +x ~/bin/rotatingwp.sh
