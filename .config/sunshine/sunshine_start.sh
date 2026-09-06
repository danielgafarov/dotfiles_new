#!/bin/bash
hyprctl output create headless virt-disp
hyprctl eval 'hl.monitor({ output = "virt-disp",  mode = "2400x1080@60", scale = "auto" })'
hyprctl eval 'hl.monitor({ output = "DP-5", disabled = true })'
#hyprctl eval hl.monitor({ output = "eDP-1",  disabled = true })

