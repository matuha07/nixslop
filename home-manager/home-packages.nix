{ config, pkgs, ... }:
let
  helium-browser = pkgs.callPackage ./helium.nix { };
in
{
  home.packages = with pkgs; [
    kdePackages.dolphin
    kdePackages.qtsvg
    kdePackages.qt6ct

    helium-browser

    qbittorrent
    localsend
    
    grim
    grimblast
    
    fastfetch
    btop
    ripgrep
    bat

    wl-clipboard
    slurp
    cliphist
    carapace
    dconf

    #social
    telegram-desktop

    #media
    ffmpeg
    mpv
    feh
    krita
    obs-studio

    #game
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
