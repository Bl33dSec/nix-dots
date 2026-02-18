{ pkgs, ... }:

{
  imports = [
    ./fonts.nix
    ./theme.nix
    ./programs
    ./shell
  ];

  programs.git.enable = true;

  home = {
    username = "ben";
    homeDirectory = "/home/ben";
    stateVersion = "25.11";

    packages = with pkgs; [
      tmux
      fastfetch
      typst
      cherrytree
      burpsuite
    ];
  };
}
