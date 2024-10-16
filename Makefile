ifeq ($(OS),Windows_NT)
	GREEN=[00;32m
	RESTORE=[0m
else
	GREEN="\033[0;32m"
	RESTORE="\033[0m"
endif

# make the output of the message appear green
define style_calls
	$(eval $@_msg = $(1))
	echo ${GREEN}${$@_msg}${RESTORE}
endef

lint: style-lint
	@$(call style_calls,"Running selene")
	@selene --display-style quiet --config ./selene.toml lua
	@$(call style_calls,"Done!")

.PHONY: lint

style-lint:
	@$(call style_calls,"Running stylua check")
	@stylua --color always -f ./.stylua.toml --check lua
	@$(call style_calls,"Done!")

.PHONY: style-lint

format:
	@$(call style_calls,"Running stylua format")
	@stylua --color always -f ./.stylua.toml lua
	@$(call style_calls,"Done!")

.PHONY: format
