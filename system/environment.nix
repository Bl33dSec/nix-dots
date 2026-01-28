{ ... }:

{
  services.displayManager.ly.enable = true;

  services.desktopManager.cosmic.enable = true;

  services.system76-scheduler.enable = true;

  programs.firefox.preferences = {
    # disable libadwaita theming for Firefox
    "widget.gtk.libadwaita-colors.enabled" = false;
  };
}
