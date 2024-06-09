#!/usr/bin/env python3
import yaml
from obsidian_to_hugo import ObsidianToHugo

def filter_file(file_contents: str, file_path: str) -> bool:
    fc = yaml.safe_load_all(file_contents)
    print(dir(fc))
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
