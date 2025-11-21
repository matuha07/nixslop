{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    nodejs
    fastfetch
    btop
    unzip
    gh
    localsend
    waybar
    unzip
    ripgrep
    pciutils
    usbutils
    wl-clipboard
    grim
    slurp
    feh
    dconf
  ];
}
