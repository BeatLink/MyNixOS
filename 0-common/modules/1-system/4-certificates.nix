
{ config, lib, pkgs, modulesPath, ... }: 
{
    sops.secrets.technet_certificate = {
        sopsFile = ../../secrets.yaml;
    };
    security.pki.certificateFiles = [ 
        config.sops.secrets.technet_certificate.path
    ];
}