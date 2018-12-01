SUBDIRS= minidlna toolbox sandbox
TARGETS= build

SUBDIRS_TARGETS := $(foreach s,$(SUBDIRS),$(addprefix $s-,$(TARGETS)))

$(TARGETS): % : $(addsuffix -%,$(SUBDIRS))
	@echo 'Done "$*" target'

$(SUBDIRS_TARGETS):
	@echo "Building: $@"
	$(MAKE) -C $(firstword $(subst -, ,$@)) $(word 2,$(subst -, ,$@))

install:
	@ echo "Installing the dockerfiles binaries"
	@ mkdir -p $(HOME)/bin
	@for file in $(shell find $(CURDIR) -type f -path "$(CURDIR)/*/bin/*"); do \
		f=$$(basename $$file); \
		ln -sf $$file $(HOME)/bin/$$f; \
	done

.PHONY: install $(TARGETS)
