{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    tmux
    cloudflare-warp
    efibootmgr
    openssl
    prisma-engines
    brightnessctl

    #hyprslop
    hyprpolkitagent

    # gtk slop
    adw-gtk3
    gnome-themes-extra
    glib
    gsettings-desktop-schemas
    nixfmt-rfc-style
  ];
  programs.fish.enable = true;
}
