{ config, pkgs, ... }:

{
  imports = [
    ./home-packages.nix
    ./modules
  ];

  systemd.user.startServices = "sd-switch";
  services.udiskie = {
    enable = true;
    settings = {
        # workaround for
        # https://github.com/nix-community/home-manager/issues/632
        program_options = {
            # replace with your favorite file manager
            file_manager = "${pkgs.kdePackages.dolphin}/bin/dolphin";
        };
    };
};

  home.file.".config/kwalletrc".text = "
  [Wallet]
  Enabled=false";

  home.username = "motya";
  home.homeDirectory = "/home/motya";
  home.stateVersion = "25.11";
}
