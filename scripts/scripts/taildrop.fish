#!/usr/bin/env/ fish

## take all files in the drop directory and send them to the server using tailscale, then clear the folder

set dest $argv[1]

7z a zipname $argv[2..]
tailscale file cp ./$zipname.7z $dest:
for i in $argv[2..]
    trash $i
end
trash ./$zipname.7z
