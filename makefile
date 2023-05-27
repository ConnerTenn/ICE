
default: clean test build

list:
	@echo Targets:
	@echo "  install"
	@echo "  build"
	@echo "  test"
	@echo "  clean"
	@echo "default:  clean test build

install: build test

build: $(SUBDIRS)
	$(MAKE) -C ICE-lang test
	$(MAKE) -C ICE-shell test

test:
	$(MAKE) -C ICE-lang test
	$(MAKE) -C ICE-shell test

clean:
	$(MAKE) -C ICE-lang test
	$(MAKE) -C ICE-shell test
