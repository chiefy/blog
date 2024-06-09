
HUGO_CONTENT_DIR=/Users/chief/Work/blog/content

.PHONY: setup
setup:
	@pip3 install obsidian-to-hugo pyyaml

.PHONY: generate
generate:
	@obsidian-to-hugo --hugo-content-dir $(HUGO_CONTENT_DIR)