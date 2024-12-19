{ config, pkgs, ... }: 
{
    # services.flatpak.packages = [ "flathub:app/com.borgbase.Vorta//stable" ];
    
    environment.systemPackages = with pkgs; [ syncthingtray ];
    home-manager.users.beatlink = { config, pkgs, ... }: {
        services.syncthing = {
            enable = true;
            tray.enable = true;
            settings = {
                devices = {
                    Heimdall = {
                        addresses = [
                            "tcp://192.168.0.2:22000"
                            "tcp://10.100.100.1:22000"
                            "udp://192.168.0.2:22000"
                            "udp://10.100.100.1:22000"
                        ];
                        id = "Q6AIAK4-4PFLB3Z-73QF54Y-EKQ2LC5-5FSVFRZ-RBGWFDI-KZQI45E-JBXXTQY";
                    };
                    Thor = {
                        addresses = [
                            "tcp://192.168.0.5:22000"
                            "tcp://10.100.100.4:22000"
                            "udp://192.168.0.5:22000"
                            "udp://10.100.100.4:22000"
                        ];
                        id = "IZOOSHB-MWRVHH7-HVEVB4P-UVR7NIU-UD4ZJBW-GBGY6EE-OOY2PLM-2IE32QT";
                    };
                };
                folders = {
                    "/Storage/Files/Documents" = {
                        label = "Documents";
                        id = "hz0k1-egjw9";
                        devices = [ "Heimdall" "Thor" ];
                        type = "sendreceive";
                    };
                    "/Storage/Files/Downloads" = {
                        label = "Downloads";
                        id = "unmbe-b2iab";
                        devices = [ "Heimdall" "Thor" ];
                        type = "sendreceive";
                    };
                    "/Storage/Files/eBooks" = {
                        label = "eBooks";
                        id = "kj0id-3vcea";
                        devices = [ "Heimdall" "Thor" ];
                        type = "sendreceive";
                    };
                    "/Storage/Files/Music" = {
                        label = "Music";
                        id = "8g86n-1309l";
                        devices = [ "Heimdall" "Thor" ];
                        type = "sendonly";
                    };
                    "/Storage/Files/Pictures" = {
                        label = "Pictures";
                        id = "ta09s-b2u0y";
                        devices = [ "Heimdall" "Thor" ];
                        type = "sendreceive";
                    };
                    "/Storage/Files/Projects" = {
                        label = "Projects";
                        id = "xjtvv-cyqwv";
                        devices = [ "Heimdall" "Thor" ];
                        type = "sendreceive";
                    };
                    "/Storage/Files/Sounds" = {
                        label = "Sounds";
                        id = "kae2q-5740v";
                        devices = [ "Heimdall" "Thor" ];
                        type = "sendreceive";
                    };
                    "/Storage/Files/Videos" = {
                        label = "Videos";
                        id = "4kqye-6dosm";
                        devices = [ "Heimdall" "Thor" ];
                        type = "sendreceive";
                    };
                };
            };


        };


    
            /*persistence."/Storage/Apps/System/Vorta" = {
                directories = [
                    ".var/app/com.borgbase.Vorta"
                ];
                allowOther = true;
            };
            file = {
                ".config/autostart/com.borgbase.Vorta.desktop".source = config.lib.file.mkOutOfStoreSymlink "/var/lib/flatpak/exports/share/applications/com.borgbase.Vorta.desktop";
            };*/
    };
}
