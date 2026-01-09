# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "nixos"; # Define your hostname.
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  networking.networkmanager.enable = true;
  security.polkit.enable = true;
  time.timeZone = "Asia/Almaty";
  i18n.defaultLocale = "en_US.UTF-8";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.udisks2.enable = true;

  users.users.motya = {
    isNormalUser = true;
    description = "motya";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "libvirtd"
      "kvm"
    ];
    shell = pkgs.nushell;
    packages = with pkgs; [ ];
  };

  services.getty.autologinUser = "motya";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  services.cloudflare-warp.enable = true;

  system.stateVersion = "25.11";

}
