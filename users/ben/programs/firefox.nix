{ ... }:

{
  programs.firefox = {
    enable = true;
    profiles.ben = {
      settings = {
        "widget.gtk.libadwaita-colors.enabled" = false;
      };
    };
  };
}
