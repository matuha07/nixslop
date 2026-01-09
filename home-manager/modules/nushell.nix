{ lib, pkgs, ... }:
{
  programs.nushell = {
    enable = true;

    extraConfig = ''
      $env.config = {
        show_banner: false
        completions: {
          case_sensitive: false
          quick: true
          partial: true
          algorithm: "fuzzy"
          external: {
            enable: true
            completer: {|spans|
              carapace $spans.0 nushell ...$spans
              | from json
              | default []
            }
          }
        }
      }
    '';
  };

  programs.carapace = {
    enable = true;
    enableNushellIntegration = true;
  };
}
