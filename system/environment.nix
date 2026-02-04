{ ... }:

{
  programs.zsh.enable = true;

  services = {
    displayManager = {
      ly = {
        enable = true;
      };
    };

    desktopManager = {
      cosmic = {
        enable = true;
      };
    };

    system76-scheduler = {
      enable = true;
    };
  };
}
