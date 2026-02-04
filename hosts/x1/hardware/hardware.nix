{ ... }:

{
  hardware = {
    cpu.intel = {
      updateMicrocode = true;
    };

    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };

  services = {
    power-profiles-daemon.enable = false;

    fwupd = {
      enable = true;
    };

    tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
        START_CHARGE_THRESH_BAT0 = 75;
        STOP_CHARGE_THRESH_BAT0 = 80;
      };
    };

    hardware = {
      bolt = {
        enable = true;
      };
    };

    fstrim = {
      enable = true;
      interval = "weekly";
    };
  };
}
