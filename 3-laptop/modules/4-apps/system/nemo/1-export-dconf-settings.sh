#!/usr/bin/env bash


dconf dump /org/nemo/ | nix-shell -p dconf2nix --run "dconf2nix --root "/org/nemo/plank" > 2-dconf-settings.nix"