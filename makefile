
default: clean test build

list:
	@echo Targets:
	@echo "  install"
	@echo "  build"
	@echo "  test"
	@echo "  clean"
	@echo "default:  clean test build

install: build test
	$(MAKE) -C ICE-lang install
	$(MAKE) -C ICE-shell install

build: test
	$(MAKE) -C ICE-lang build
	$(MAKE) -C ICE-shell build

test:
	$(MAKE) -C ICE-lang test
	$(MAKE) -C ICE-shell test

clean:
	$(MAKE) -C ICE-lang clean
	$(MAKE) -C ICE-shell clean
