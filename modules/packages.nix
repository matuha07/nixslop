{ config, pkgs, ... }:
{
  programs.adb.enable = true;
  services.flatpak.enable = true;
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [

    vim
    wget
    git
    tmux
    efibootmgr
    brightnessctl
    bluetui
    nushell

    pciutils
    usbutils
    unzip
    zip
    lm_sensors
    bind
    #hyprslop
    hyprpolkitagent

    # gtk slop
    adw-gtk3
    gnome-themes-extra
    glib
    gsettings-desktop-schemas

    nixfmt-rfc-style
  ];
  programs.zsh.enable = true;
}
