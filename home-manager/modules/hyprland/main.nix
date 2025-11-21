{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      env = [
        "NIXOS_OZONE_WL,1"
      ];

      monitor = ",1920x1200@60,auto,1";
      "$mainMod" = "SUPER";
      "$terminal" = "kitty";
      "$menu" = "wofi";
      exec-once = [
        "waybar"
      ];
    };
  };
}
