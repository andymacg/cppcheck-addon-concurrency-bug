.PHONY: all misra premium clean version

CPPCHECK ?= cppcheck

premium: version all
	$(CPPCHECK) \
		-j 10 \
		--premium=misra-c-2023 \
		--suppressions-list=.cppcheck-suppressions \
		--enable=style \
		--cppcheck-build-dir=build/cppcheck_build \
		--project=build/compile_commands.json

misra: version all
	$(CPPCHECK) \
		-j 10 \
		--addon=misra \
		--suppressions-list=.cppcheck-suppressions \
		--enable=style \
		--cppcheck-build-dir=build/cppcheck_build \
		--project=build/compile_commands.json

all:
	mkdir -p build
	mkdir -p build/cppcheck_build
	cd build && cmake ..
	$(MAKE) -C build

# print out version to help know what's running
version:
	@$(CPPCHECK) --version

clean:
	rm -rf build
