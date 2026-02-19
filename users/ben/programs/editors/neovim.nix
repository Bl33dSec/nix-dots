{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
    fzf
    fd
    nodejs
  ];

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
}
