{ config, lib, pkgs, ... }:
{
    services.flatpak.packages = [
        "flathub:app/org.mozilla.firefox//stable"
        "flathub:runtime/org.freedesktop.Platform.ffmpeg-full//23.08"
    ];
    home-manager.users.beatlink = { config, pkgs, ... }: {
        home = {
            persistence."/Storage/Apps/Core/Firefox" = {
                directories = [ 
                    ".var/app/org.mozilla.firefox"
                ];
                allowOther = true;
            };
        };
    };
}