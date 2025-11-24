{ config, pkgs, ... }:
{

  programs.hyprland = {
    enable = true;
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [
  pkgs.xdg-desktop-portal-hyprland
	];
	
  security.pam.services.hyprlock = {};

  hardware.nvidia = {
  modesetting.enable = true;
  powerManagement.enable = true;
};
environment.variables = {
  WLR_NO_HARDWARE_CURSORS = "1";
  __GLX_VENDOR_LIBRARY_NAME = "nvidia";
};


  services = {
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;
  };

}
