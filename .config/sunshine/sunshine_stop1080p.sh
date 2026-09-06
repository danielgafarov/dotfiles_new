#!/bin/bash
hyprctl keyword monitor DP-5, 1920x1080@165, 0x0, auto, vrr, 1
hyprctl keyword monitor eDP-1, 1920x1080@144, 1920x0, auto
hyprctl output remove virt-disp
#steam -shutdown
#setsid steam steam://close/bigpicture
