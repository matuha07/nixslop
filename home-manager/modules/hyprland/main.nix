{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      env = [
        "NIXOS_OZONE_WL,1"
        "XDG_SCREENSHOTS_DIR,$HOME/screenshots"
      ];

      monitor = ",1920x1200@60,auto,1";
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$menu" = "wofi";
      exec-once = [
        "waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
      ];

      input = {
        kb_layout = "us,ru";
        kb_options = "grp:win_space_toggle";
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };


      animations = {
        enabled = false;
      };

    };
  };
}
