# html-element-id-generator
Recursively append an id attribute with unique id to all html elements in path.

__It will append an id to elements even if they alread have one - caution is advised.__

Usage: ```./generate-ids.sh <recursive_path_to_htmls>```


Before: *\<div\>*
  
After: *\<div id="D12C5766-D195"\>*

Ubuntu
--------
In the script - rename `gsed` to `sed`

Mac
--------
Make sure `gsed` is installed

Windows
--------
Go get yourself a mac
