#!/bin/bash
hyprctl output create auto virt-disp
hyprctl keyword monitor virt-disp, 1920x1080@60, auto
hyprctl keyword monitor DP-5, disable
hyprctl keyword monitor eDP-1, disable

