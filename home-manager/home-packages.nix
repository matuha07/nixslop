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
    postman

    #media
    ffmpeg
    mpv
    feh
    krita
    obs-studio

    #hyprass
    xdg-desktop-portal-hyprland
    hyprpolkitagent

    #dev
    tree
    nodejs
    pnpm
    gh
    gcc
    go
    bruno

  ];

  xdg.configFile."php/php.ini".text = ''
    zend_extension = xdebug.so
    xdebug.mode = debug
    xdebug.start_with_request = yes
    xdebug.client_port = 9003
  '';

}
