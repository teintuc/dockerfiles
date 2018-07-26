install:
	@ echo "Installing the dockerfiles binaries"
	@ mkdir -p $(HOME)/bin
	@for file in $(shell find $(CURDIR) -type f -path "$(CURDIR)/*/bin/*"); do \
		f=$$(basename $$file); \
		ln -sf $$file $(HOME)/bin/$$f; \
	done

.PHONY: install
