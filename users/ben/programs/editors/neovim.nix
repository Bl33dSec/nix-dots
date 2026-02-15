{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
    fzf
    fd
  ];

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
}
