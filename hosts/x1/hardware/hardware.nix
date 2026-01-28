{ configs, pkgs, ... }:

{
  hardware.cpu.intel.updateMicrocode = true;

  services.fwupd.enable = true;

  services.power-profiles-daemon.enable = false;
  services.tlp = {
    enable = true;
    settings = {
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      START_CHARGE_THRESH_BAT0 = 75;
      STOP_CHARGE_THRESH_BAT0 = 80;
    };
  };

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
 
  services.hardware.bolt.enable = true;
  
  services.fstrim= {
    enable = true;
    interval = "weekly";
  };
}
