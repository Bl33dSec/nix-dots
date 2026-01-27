{ config, lib, pkgs, ... }:

{
  imports =
   [
     ./boot/boot.nix
     ./networking/networking.nix
   ];

  time.timeZone = "Europe/Amsterdam";

  environment.systemPackages = with pkgs; [
    wget
    vim
    git
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";
}

