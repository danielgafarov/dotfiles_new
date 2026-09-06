#!/bin/bash
hyprctl eval 'hl.monitor({ output = "DP-5",  mode = "1920x1080@165", scale = "auto", vrr = 2, disabled = false })'
#hyprctl 'eval hl.monitor({ output = "eDP-1",  mode = "1920x1080@144", scale = "auto", })'
hyprctl output remove virt-disp
#steam -shutdown
#setsid steam steam://close/bigpicture
