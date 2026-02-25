{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
    fzf
    fd
    nodejs
    cargo
    gcc
  ];

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
}
