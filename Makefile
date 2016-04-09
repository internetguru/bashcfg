TMP = "/tmp"
MAN_PATH = "$(shell manpath)"
LIB_PATH = /usr/local/lib
PANDOC = pandoc
GIT_FLOW_CMD = "git_flow"
GIT_FLOW_CMD_PATH = "$(GIT_FLOW_CMD)"
GIT_FLOW_TAR = "$(GIT_FLOW_CMD).tar.gz"
MD_FILE = "$(GIT_FLOW_CMD).md"
MAN_FILE = "$(GIT_FLOW_CMD).1"
HTML_FILE = "$(GIT_FLOW_CMD).html"
TO_BIN = globals git_functions $(GIT_FLOW_CMD)

man:
	@ $(PANDOC) -s -t man $(MD_FILE) -o $(MAN_FILE)
	@ echo "$(MAN_FILE) created"

html:
	@ $(PANDOC) -t html -s $(MD_FILE) -o $(HTML_FILE)
	@ echo "$(HTML_FILE) created"

dist: clean
	@ tar czf "$(TMP)/$(GIT_FLOW_TAR)" .
	@ mv "$(TMP)/$(GIT_FLOW_TAR)" .
	@ echo "$(GIT_FLOW_TAR) created"

install:
	@ if [ -f $(MAN_FILE) ]; then \
	for dir in $(shell echo $(MAN_PATH) | tr ":" "\n"); do \
	cp $(MAN_FILE) "$$dir"/man1; \
	done; \
	else \
	echo "$(MAN_FILE) missing; run \"make man\""; \
	exit 1; \
	fi;
	@ mkdir "$(LIB_PATH)/$(GIT_FLOW_CMD)"
	@ cp $(TO_BIN) "$(LIB_PATH)/$(GIT_FLOW_CMD)"
	@ echo "Add $(LIB_PATH)/$(GIT_FLOW_CMD) to your PATH"
	@ echo "$(GIT_FLOW_CMD) installed"

uinstall:
	@ for dir in $(shell echo $(MAN_PATH) | tr ":" "\n"); do \
	if [ -f "$$dir"/man1/$(MAN_FILE) ]; then rm "$$dir"/man1/$(MAN_FILE); fi \
	done;
	@ if [ -d $(LIB_PATH)/$(GIT_FLOW_CMD) ]; then rm -rf $(LIB_PATH)/$(GIT_FLOW_CMD); fi
	@ echo "$(GIT_FLOW_CMD) removed"

clean:
	@ rm "$(MAN_FILE)" 2>/dev/null || true
	@ rm "$(HTML_FILE)" 2>/dev/null || true
	@ rm "$(GIT_FLOW_TAR)" 2>/dev/null || true
