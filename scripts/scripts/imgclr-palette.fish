#!/usr/bin/env fish

argparse f/full l/low g/no-gold -- $argv
or return

if set -ql _flag_full
    imgclr $argv[1] $argv[2] --palette 1d1b19 dbdace 282623 935334 66604d ad8b67 9c7d36 634737 5a6648 bcbba4 43403b c76e42 998e60 e0ae70 d2a949 965a42 6c804e ad8b67
end

if set -ql _flag_low
    imgclr $argv[1] $argv[2] --palette 1d1b19 dbdace 282623 935334 66604d ad8b67 9c7d36 634737 5a6648
end

if set -ql _flag_no-gold
    imgclr $argv[1] $argv[2] --palette 1d1b19 dbdace 282623 935334 66604d ad8b67 634737 5a6648
end

