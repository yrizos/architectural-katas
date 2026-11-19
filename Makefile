.PHONY: help run build pdf icon fix lint hooks-install hooks-uninstall

help:
	@awk 'BEGIN { FS = ": ## "; if (system("test -t 1") == 0) { c = "\033[36m"; r = "\033[0m" } } /^[a-z\\:-]+: ## / { name = $$1; gsub(/\\/, "", name); printf "%s%-15s%s %s\n", c, name, r, $$2 }' $(MAKEFILE_LIST)

run: ## Run the site
	hugo server

ICON := static/icon.png

icon: ## Generate favicon, iOS and Android icons in static/
	magick "$(ICON)" -resize 32x32 static/favicon-32x32.png
	magick "$(ICON)" -define icon:auto-resize=16,32,48 static/favicon.ico
	magick "$(ICON)" -resize 180x180 static/apple-touch-icon.png
	magick "$(ICON)" -resize 192x192 static/android-chrome-192x192.png
	magick "$(ICON)" -resize 512x512 static/android-chrome-512x512.png

SITE_URL := $(shell sed -n 's/^baseURL[[:space:]]*=[[:space:]]*"\(.*\)"/\1/p' hugo.toml)

pdf: ## Build the template PDFs into static/toolkit/
	mkdir -p static/toolkit
	sed 's|{{ base_url }}|$(SITE_URL)|g' pdf/adr-template.html | weasyprint --custom-metadata -u pdf/ - static/toolkit/adr-template.pdf
	sed 's|{{ base_url }}|$(SITE_URL)|g' pdf/timeline-template.html | weasyprint --custom-metadata -u pdf/ - static/toolkit/timeline-template.pdf

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
