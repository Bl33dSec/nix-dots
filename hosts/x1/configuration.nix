{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware/hardware-configuration.nix
      ./hardware/hardware.nix
      ../../system/system.nix
    ];
  
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
  };

  services.btrbk.instances.home-backup = {
    onCalendar = "daily";
    settings = {
      snapshot_preserve_min = "latest";
      snapshot_preserve = "7d";

      volume."/home" = {
        snapshot_dir = ".snapshots";
        subvolume."." = {};
      };
    };
  };
}

