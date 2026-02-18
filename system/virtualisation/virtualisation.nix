{ ... }:

{
  programs = {
    virt-manager = {
      enable = true;
    };
  };

  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
      };
    };

    spiceUSBRedirection = {
      enable = true;
    };
  };

  users.groups.libvirtd.members = ["ben"];
}
