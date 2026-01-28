{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.ben = {
      extensions = { 
        packages = with pkgs.nur.repos.rycee.firefox-addons; [
	  ublock-origin
	  dashlane 
	  wappalyzer
	  foxyproxy-standard
        ];
      };

      settings = {
        "widget.gtk.libadwaita-colors.enabled" = false;
      };
    };
  };
}
