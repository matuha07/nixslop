{
  pkgs,
  appimageTools,
  fetchurl,
}:
let
  pname = "helium-browser";
  version = "0.7.2.1";
in
appimageTools.wrapType2 {
  inherit pname version;

  src = fetchurl {
    url = "https://github.com/imputnet/helium-linux/releases/download/${version}/helium-${version}-x86_64.AppImage";
    hash = "sha256-PwXgpmauBN6EXoZE6HnpgrisrO5a9VzQEDv3T2OsPnc=";
  };

  extraInstallCommands =
    let
      appimageContents = appimageTools.extractType2 {
        inherit pname version;
        src = fetchurl {
          url = "https://github.com/imputnet/helium-linux/releases/download/${version}/helium-${version}-x86_64.AppImage";
          hash = "sha256-PwXgpmauBN6EXoZE6HnpgrisrO5a9VzQEDv3T2OsPnc=";
        };
      };
    in
    ''
      install -Dm444 ${appimageContents}/helium.desktop -t $out/share/applications
      substituteInPlace $out/share/applications/helium.desktop \
        --replace-fail 'Exec=AppRun' 'Exec=${pname}'
      install -Dm444 ${appimageContents}/helium.png $out/share/pixmaps/helium.png
    '';

  passthru = {
    updateScript = pkgs.nix-update-script {
      attrPath = "packages.${pkgs.system}.helium-browser";
    };
  };

  meta = {
    description = "Helium web browser";
    homepage = "https://github.com/imputnet/helium-linux";
    platforms = [ "x86_64-linux" ];
    mainProgram = pname;
  };
}
