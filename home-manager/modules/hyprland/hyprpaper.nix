{pkgs, ...}: {
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;

      preload = [
        "~/wallpaper/wallpaper.png"
      ];

      wallpaper = [
        ", ~/wallpaper/wallpaper.png"
      ];
    };
  };

  home.packages = with pkgs; [hyprpaper];
}
