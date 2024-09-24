# Backup Server ###########################################################################################################################
#
# This provides the configuration for the Rock64 SBC Backup Server
#
###########################################################################################################################################

{ config, lib, pkgs, modulesPath, ... }: 
{
    imports = [
        (modulesPath + "/installer/scan/not-detected.nix")
        ./modules/0-sd-image.nix
        ./modules/1-boot.nix
        ./modules/2-filesystems.nix
        ./modules/3-software.nix
        ./modules/4-networking.nix
        ./modules/5-ssh.nix
        ./modules/6-backup-drive.nix
        ./modules/7-borg.nix
    ];
}