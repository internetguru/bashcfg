MAN_PATH = "$(shell manpath)"
BIN_PATH = /usr/local/bin
PANDOC = pandoc
GF = "git_flow"
SHARE_PATH = "/usr/share/$(GF)"
MD_FILE = "$(GF).md"
MAN_FILE = "$(GF).1"
HELP_FILE = "$(GF).help"

default:
	@ echo -n "Creating man file $(MAN_FILE) ..."
	@ $(PANDOC) -s -t man $(MD_FILE) -o $(MAN_FILE)
	@ echo DONE
	@ echo -n "Creating help file $(HELP_FILE) ..."
	@ sed -n '/# SYNOPSIS/,/# INTRODUCTION/p;/# REFE/,//p' $(MD_FILE) | grep -v "# INTRODUCTION" \
	| sed "s/\*\*//g;s/^:   /       /;s/^[^#]/       \0/;s/^# //;s/\[\(.\+\)(\([0-9]\+\))\](\(.\+\))/(\2) \1\n              \3/;s/,$$/,\n/" > $(HELP_FILE)
	@ echo -e "\nOTHER\n\n       See man $(GF) for more information." >> $(HELP_FILE)
	@ echo DONE

install:
	@ [ -f $(MAN_FILE) ] && [ -f $(HELP_FILE) ] \
	|| { echo "Expected files not found; run 'make' first."; exit 1; }
	@ echo -n "Install man page ..."
	@ for dir in $(shell echo $(MAN_PATH) | tr ":" "\n"); do cp $(MAN_FILE) "$$dir"/man1; done
	@ echo DONE
	@ echo -n "Register command ..."
	@ cp $(GF) "$(BIN_PATH)"
	@ echo DONE
	@ echo -n "Share help file ..."
	@ [ -d $(SHARE_PATH) ] || mkdir $(SHARE_PATH)
	@ cp $(HELP_FILE) $(SHARE_PATH)
	@ echo DONE

uninstall:
	@ echo -n "Uninstalling $(GF) ..."
	@ for dir in $(shell echo $(MAN_PATH) | tr ":" "\n"); do \
	[ -f "$$dir"/man1/$(MAN_FILE) ] && rm "$$dir"/man1/$(MAN_FILE)
	done;
	@ rm $(BIN_PATH)/$(GF) || true
	@ echo DONE

clean:
	@ echo -n "Remove compiled files ..."
	@ rm "$(MAN_FILE)" 2>/dev/null || true
	@ rm "$(HELP_FILE)" 2>/dev/null || true
	@ echo DONE
