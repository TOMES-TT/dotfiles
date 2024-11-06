#!/usr/bin/env fish
argparse w/wal -- $argv
if set -ql _flag_w
    wal -i (random choice $argv)
else
    feh --bg-fill (random choice $argv)
end
