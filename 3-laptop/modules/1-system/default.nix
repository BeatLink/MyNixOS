# Laptop Configuration ###############################################################################################################
# TODO: Add Notes
###########################################################################################################################################

{ config, lib, pkgs, ... }:
{
    imports = [                                   
        ./1-hardware-configuration.nix
        ./2-boot.nix
        ./3-plymouth.nix
        ./3-disko-root-drive.nix
        ./4-disko-data-drive.nix
        ./5-impermanence.nix
        ./6-sops.nix
        ./7-software.nix
        ./8-networking.nix
        ./9-ssh.nix
        ./10-display.nix
        ./11-sound.nix
        ./12-bluetooth.nix
        ./13-printing.nix
        ./14-fuse.nix
        ./15-home-folders.nix
        ./desktop-environment

    ];
}
