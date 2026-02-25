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
          privacy-badger
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
                name = "Gmail";
                tags = [ "Gmail" ];
                url = "https://mail.google.com/";
              }

              {
                name = "Claude";
                tags = [ "ai"  "code" ];
                url = "https://claude.ai/";
              }

              {
                name = "Python";
                tags = [ "code" ];
                url = "https://python.org/doc/";
              }

              {
                name = "GitHub";
                tags = [ "code" "version-control" ];
                url = "https://github.com/";
              }

              {
                name = "Notion";
                tags = [ "planning" "notes" ];
                url = "https://notion.so/";
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

