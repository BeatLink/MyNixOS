# Module Imports ##########################################################################################################################
#
# This imports the modules below
#    - 1-system
#    - 2-users
#    - 3-services
#    - 4-apps
#
###########################################################################################################################################

{ config, lib, pkgs, ... }:
{
    imports = [                                   
        ./1-system
        #./apps
    ];
}
