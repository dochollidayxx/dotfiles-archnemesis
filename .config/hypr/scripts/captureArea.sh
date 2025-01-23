#! /bin/bash
grim -g "$(slurp)" - | tee $(xdg-user-dir PICTURES)/Screenshots/$(date +'%Y-%m-%d_%H_%M:%S_grim.png') | wl-copy
