{ config, pkgs, ... }:

{
  imports = [
    ./home-packages.nix
    ./modules
  ];
  home.username = "motya";
  home.homeDirectory = "/home/motya";
  home.stateVersion = "25.05";
}
