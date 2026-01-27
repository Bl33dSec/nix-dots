{ config, lib, ... }:

{
  networking.hostName = "onix";
  networking.networkmanager.enable = true;

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ ];
    allowedUDPPorts = [ ];
    allowPing = false;
  };
}

