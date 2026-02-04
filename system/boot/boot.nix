{ pkgs, ... }:

{
  boot = {
    loader = {
      systemd-boot = {
        enable = true; 
      };

      efi = {
        canTouchEfiVariables = true; 
      };

      timeout = 0;
    };

    plymouth = {
      enable = true; 
    };

    initrd = {
      systemd = {
        enable = true; 
      };
    };

    consoleLogLevel = 0; 
    kernelPackages = pkgs.linuxPackages_latest;
  };
}

