{ config, lib, pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.plymouth.enable = true;
  boot.initrd.systemd.enable = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.initrd.luks.devices = {
    luksroot = {
      device = "/dev/disk/by-uuid/97f80c93-df0c-4c92-ba66-bc77b0de8deb";
      preLVM = true;
      allowDiscards = true;
    };
  }; 
}

