#!/bin/bash
alias wget="wget --no-hsts"

alias bios="systemctl reboot --firmware"
alias display-brightness="ddcutil setvcp 10"
alias amduprof="AMDuProf"
alias file_offset="filefrag -v $1 | head -n 4 | tail -n 1 | awk '{print $4}' | sed 's/\.//g'"
alias file_UUID="findmnt -no UUID -T $1"

alias firefox="flatpak run org.mozilla.firefox"
alias text-editor="flatpak run org.gnome.TextEditor"
alias handbrake="flatpak run fr.handbrake.ghb"
alias paper="flatpak run io.posidon.Paper"
