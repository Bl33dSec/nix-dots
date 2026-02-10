{ pkgs, ... }:

{
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
