{ config, pkgs, ... }:
{
  fonts.enableDefaultPackages = true;
  fonts.packages = with pkgs; [
  fira-code-symbols
  fira-code
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    liberation_ttf
    jetbrains-mono
    font-awesome
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      monospace = [ "JetBrains Mono" ];
      serif = [ "Noto Serif" ];
      sansSerif = [ "Noto Sans" ];
    };
  };
}
