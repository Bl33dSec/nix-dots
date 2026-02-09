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

      bookmarks = {
        force = true;
        settings = [
          {
            name = "Nix sites";
            toolbar = true;
            bookmarks = [
              {
                name = "Nix wiki";
                tags = [ "nix" "wiki" ];
                url = "https://wiki.nixos.org/";
              }

              {
                name = "Nix pkgs";
                tags = [ "nix" "pkgs" ];
                url = "https://search.nixos.org/packages";
              }

              {
                name = "Hm options";
                url = "https://nix-community.github.io/home-manager/options.html";
              }
            ];
          }
        ];
      };
    };

    policies = {
      HardwareAcceleration = false;
      OfferToSaveLogins = false;
    };
  };
}

