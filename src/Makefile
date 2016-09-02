root := $(if $(MAKEFILES_LIST),\
         $(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST)),\
         $(CURDIR))

CFLAGS=-O3

all:
all: $(root)/../bin/limit
all: $(root)/../bin/getcpu

$(root)/../bin/%: %.c
	@$(MAKE) --no-print-directory $*
	mv $* $@

arduino: power-meter power-meter/read-meter

.PHONY: power-meter
power-meter: power-meter/power-meter.ino
	@if [ "X$$ARDUINO_PORT" = "X" ] ; then \
	  echo "You must specify the serial device for the arduino" ; \
	  echo "Set ARDUINO_PORT to the correct path" ; \
	  exit 2 ; \
	fi
	arduino --upload --port $$ARDUINO_PORT $<

power-meter/read-meter: CXXFLAGS = -std=c++11

