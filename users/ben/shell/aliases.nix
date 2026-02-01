{ ... }:

{
  home.shellAliases = {
    rebuild = "sudo nixos-rebuild switch --flake ~/nix-dots#onix";
    update = "sudo nix flake update --flake ~/nix-dots";
  };
}
