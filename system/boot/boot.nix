{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 0;

  boot.plymouth.enable = true;
  boot.initrd.systemd.enable = true;

  boot.consoleLogLevel = 0;

  boot.kernelPackages = pkgs.linuxPackages_latest;
}

