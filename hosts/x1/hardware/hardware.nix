{ configs, pkgs, ... }:

{
  hardware.cpu.intel.updateMicrocode = true;

  services.fwupd.enable = true;

  services.power-profiles-daemon.enable = false;
  services.thermald.enable = true;
  services.auto-cpufreq.enable = true;
  services.auto-cpufreq.settings = {
    battery = {
      governor = "powersave";
      turbo = "never";
      enable_tresholds = true;
      start_treshold = 60;
      stop_threshold = 80;
   };
    charger = {
      governor = "performance";
      turbo = "auto";
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
