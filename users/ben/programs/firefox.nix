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

      preferences = {
        "privacy.resistFingerprinting"  = true;
      };

      policies = {
        DisableFirefoxAccounts = true;
        DisableTelemetry = true;
        HardwareAcceleration = false;
	OfferToSaveLogins = false;
      };
    };

    profiles.default.search = {
      force = true;
      default = "DuckDuckGo";
      privateDefault = "DuckDuckGo";

      engines = {
        "Nix Packages" = {
          urls = [
            {
              template = "https://search.nixos.org/packages";
              params = [
                { name = "channel"; value = "25.11"; }
                { name = "query";   value = "{searchTerms}"; }
              ];
            }
          ];

          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@np" ];
        };

        "NixOS Wiki" = {
          urls = [
            {
              template = "https://wiki.nixos.org/w/index.php";
              params = [ { name = "search"; value = "{searchTerms}"; } ];
            }
          ];

          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@nw" ];
        };
      };
    };
  };
}

