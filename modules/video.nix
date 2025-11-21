{ config, pkgs, ... }:
{

  programs.hyprland = {
    enable = true;
  };
  services = {
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;
  };

}
