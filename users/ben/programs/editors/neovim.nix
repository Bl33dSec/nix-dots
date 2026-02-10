{ config, pkgs, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nix-dots/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
in

{
  xdg.configFile."nvim" = {
    source = create_symlink "${dotfiles}/nvim";
    recursive = true;
  };

  # home.packages = with pkgs; [
  #   ripgrep
  #   fzf
  # ];

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
}
