{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings.main = {
      layer = "top";
      height = 32;
      margin-top = 4;
      margin-left = 4;
      margin-right = 4;
      spacing = 0;
      modules-left = [
        "network"
        "tray"
        "clock"
      ];
      modules-center = [ "hyprland/workspaces" ];
      modules-right = [
        "temperature"
        "memory"
        "battery"
      ];

      clock = {
	tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format = "{:%e %B %H:%M}";
      };

      tray.spacing = 10;


      network = {
      	format-wifi = "";
	format-ethernet = "";
	tooltip-format = "{ifname} via {gwaddr} ";
	format-linked = "";
	format-disconnected = "⚠";
	format-alt = "{ifname}: {ipaddr}/{cidr}";
      };

      temperature = {
        format = "{temperatureC}°C {icon}";
	format-icons = [""];
	};

      memory = {
      	format = "{}% ";
      };

      battery = {
       states = {
       warning = 30;
       critical = 15;
       };

       format = "{capacity}% {icon}";
       format-charging = "{capacity}% ";
       format-plugged = "{capacity}% ";
	format-alt = "{time} {icon}";
	format-icons = ["" "" "" "" ""];
      };

    };
  };

}
