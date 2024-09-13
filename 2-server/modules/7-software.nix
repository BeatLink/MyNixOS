# Software Management################################################################################################################## 
# This section handles enabling flakes, configuring upgrades and installing additional system packages
#######################################################################################################################################                                                   
{ config, lib, pkgs, modulesPath, ... }: 
{
    nix = {                                                             # Enables Flakes
        package = pkgs.nixFlakes;
        extraOptions = ''experimental-features = nix-command flakes'';
        settings.trusted-users = [ "root" "beatlink" ];                 # Allows me to remote update by sending the flake over ssh
    };
    system.stateVersion = "23.11";                                      # Sets the base version. Don't change unless reinstalling everything
    system.autoUpgrade.allowReboot = lib.mkForce  false;                # Prevents rebooting since LUKS manual decryption is needed
    environment.systemPackages = with pkgs; [                           # Set packages installed on system
        arion
        docker-client
    ];    
    
}