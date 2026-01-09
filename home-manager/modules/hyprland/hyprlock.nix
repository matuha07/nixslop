{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        no_fade_in = false;
      };

      animations = {
        enable = false;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = [
        {
          size = "600, 50";
          position = "0, 0";
          monitor = "";

          dots_center = true;
          placeholder_text = " ";
          font_color = "rgb(235, 219, 178)";
          inner_color = "rgb(40, 40, 40)";
          outer_color = "rgb(60, 56, 54)";

          outline_thickness = 4;
          shadow_passes = 2;
          rounding = 8;
          fade_on_empty = false;
        }
      ];

      auth = {
        pam.enabled = true;
      };
    };
  };
}
