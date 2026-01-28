{ config, pkgs, ... }:

{
  imports =
   [
     ./environment.nix
     ./boot/boot.nix
     ./networking/networking.nix
   ];

  time.timeZone = "Europe/Amsterdam";

  environment.systemPackages = with pkgs; [
    wget
    vim
    git
  ];

  users.users.ben = {
    isNormalUser = true;
    extraGroups = [ "wheel" "power" "networkmanager" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      tree
    ];
  };

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "25.11";
}

