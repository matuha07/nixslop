{ config, pkgs, ... }:
let
  helium-browser = pkgs.callPackage ./helium.nix { };
in
{
  home.packages = with pkgs; [
    kdePackages.dolphin
    kdePackages.qtsvg
    kdePackages.qt6ct

    qbittorrent
    localsend
    fastfetch
    btop
    unzip
    zip
    ripgrep
    pciutils
    usbutils
    wl-clipboard
    grim
    slurp
    dconf
    cliphist
    grimblast
    telegram-desktop
    lm_sensors
    bat
    helium-browser
    carapace

    #media
    ffmpeg
    mpv
    feh
    krita
    obs-studio
    prismlauncher

    #hyprass
    xdg-desktop-portal-hyprland
    hyprpolkitagent
    quickshell

    #dev
    tree
    nodejs
    pnpm
    gh
    gcc
    go

  ];

}
