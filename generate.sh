#!/usr/bin/env python3
import sys
import ruamel.yaml
from obsidian_to_hugo import ObsidianToHugo

yaml = ruamel.yaml.YAML(typ='safe')

def filter_file(file_contents: str, file_path: str) -> bool:
    fc = enumerate(yaml.load(file_contents))
    yaml.dump(fc, sys.stdout)
    if True:
        return True # copy file
    else:
        return False # skip file

obsidian_to_hugo = ObsidianToHugo(
    obsidian_vault_dir="/Users/chief/Documents/Obsidian",
    hugo_content_dir="/Users/chief/Work/blog/content",
    filters=[filter_file],
)

obsidian_to_hugo.run()
