{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    kdePackages.dolphin
    kdePackages.qtsvg
    kdePackages.qt6ct

    qbittorrent
    fastfetch
    btop
    unzip
    zip
    localsend
    ripgrep
    pciutils
    usbutils
    wl-clipboard
    grim
    slurp
    feh
    dconf
    cliphist
    grimblast

    #media
    ffmpeg
    mpv
    feh

    #hyprass
    xdg-desktop-portal-hyprland

    #dev
    tree
    nodejs
    pnpm
    gh
    gcc
    go

    #php-ass
    jetbrains.phpstorm
    php
    php.packages.composer
    laravel

  ];

  xdg.configFile."php/php.ini".text = ''
    zend_extension = xdebug.so
    xdebug.mode = debug
    xdebug.start_with_request = yes
    xdebug.client_port = 9003
  '';

}
