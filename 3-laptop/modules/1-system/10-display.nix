{ config, lib, pkgs, ... }:
{
    hardware = {
        graphics = {
            enable = true;
        };
        nvidia = {
            modesetting.enable = true;
            powerManagement = {
                enable = true;
                finegrained = true;
            };
            open = true;
            nvidiaSettings = true;
            package = config.boot.kernelPackages.nvidiaPackages.stable;
            prime = {
                offload = {
                    enable = true;
                    enableOffloadCmd = true;
                };
                #sync.enable = true;
                amdgpuBusId = "PCI:6:0:0";
                nvidiaBusId = "PCI:1:0:0";
            };
        };
    };
    services.xserver.videoDrivers = [ "nvidia" ];
}