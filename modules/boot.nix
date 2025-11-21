{ config, pkgs, ... }:
{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.editor = false;
  boot.loader.systemd-boot.configurationLimit = 5;

  fileSystems."/boot/windows" = {
    device = "/dev/disk/by-uuid/4142-6294";
    fsType = "vfat";
    options = [ "umask=0077" ];
  };

  boot.loader.systemd-boot.extraEntries = {
    "windows.conf" = ''
      title Windows
      efi /boot/windows/EFI/Microsoft/Boot/bootmgfw.efi
    '';
  };
}
