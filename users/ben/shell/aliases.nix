{ ... }:

{
  home.shellAliases = {
    rebuild = "sudo nixos-rebuild switch --flake ~/nix-dots#onix";
    update = "nix flake update ~/nix-dots && sudo nixos-rebuild switch --flake ~/nix-dots#onix";
  };
}
