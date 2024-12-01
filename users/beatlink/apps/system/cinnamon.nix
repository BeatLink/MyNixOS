{ config, pkgs, ... }: 
{
    home.file = {
        ".config/autostart/cinnamon-stats-tracker.desktop".text = ''
            [Desktop Entry]
            Encoding=UTF-8
            Name=Cinnamon Stats Tracker
            Comment=Stats tracker for Cinnamon
            Icon=cinnamon-symbolic
            Exec=cinnamon-stats-tracker
            Terminal=false
            Type=Application
            Categories=
            X-GNOME-Autostart-Delay=20
            AutostartCondition=GSettings com.linuxmint.dev cinnamon-stats-tracker-enabled
            OnlyShowIn=GNOME;
            X-GNOME-Autostart-enabled=false
            Hidden=true
        '';
    };
}