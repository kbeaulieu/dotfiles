#!/usr/bin/env fish

rm -f "*.asc"

for config in .*.secret
    gpg -ea $config
end
