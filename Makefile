.PHONY: help run build pdf fix lint hooks-install hooks-uninstall

help:
	@awk 'BEGIN { FS = ": ## "; if (system("test -t 1") == 0) { c = "\033[36m"; r = "\033[0m" } } /^[a-z\\:-]+: ## / { name = $$1; gsub(/\\/, "", name); printf "%s%-15s%s %s\n", c, name, r, $$2 }' $(MAKEFILE_LIST)

fix: ## Fix trailing whitespace, line endings and markdown
	@status=0; \
	pre-commit run trailing-whitespace --all-files || status=1; \
	pre-commit run mixed-line-ending --all-files || status=1; \
	pre-commit run markdownlint-cli2 --all-files || status=1; \
	pre-commit run stylelint --all-files || status=1; \
	exit $$status

lint: ## Run all linters and report problems
	@status=0; \
	for h in check-merge-conflict check-yaml check-toml checkmake gitleaks; do pre-commit run $$h --all-files || status=1; done; \
	exit $$status

# Install/remove the hooks defined in .pre-commit-config.yaml via
# pre-commit (https://pre-commit.com).
hooks-install: ## Install local Git hooks
	pre-commit install --hook-type pre-commit --hook-type commit-msg

hooks-uninstall: ## Remove local Git hooks
	pre-commit uninstall --hook-type pre-commit --hook-type commit-msg
