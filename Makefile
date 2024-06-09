
HUGO_CONTENT_DIR=/Users/chief/Work/blog/content

.PHONY: generate
generate:
	@obsidian-to-hugo --hugo-content-dir $(HUGO_CONTENT_DIR)