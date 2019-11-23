SUBDIRS= minidlna toolbox sandbox webshare
TARGETS= build

SUBDIRS_TARGETS := $(foreach s,$(SUBDIRS),$(addprefix $s-,$(TARGETS)))

$(TARGETS): % : $(addsuffix -%,$(SUBDIRS))
	@echo 'Done "$*" target'

$(SUBDIRS_TARGETS):
	@echo "Building: $@"
	$(MAKE) -C $(firstword $(subst -, ,$@)) $(word 2,$(subst -, ,$@))

.PHONY: $(TARGETS)
