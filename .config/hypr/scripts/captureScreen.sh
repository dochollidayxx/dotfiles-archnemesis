#! /bin/bash
grim -g "$(slurp -o)" - | tee $(xdg-user-dir PICTURES)/Screenshots/$(date +'%Y-%m-%d_%H_%M:%S_grim.png') | wl-copy
