MAKEFILE_LOCATION := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

all: types

types:
	python $(MAKEFILE_LOCATION)/tools/gentypes.py --input $(MAKEFILE_LOCATION)/dt_types.txt --output $(MAKEFILE_LOCATION)/dt_types.h
