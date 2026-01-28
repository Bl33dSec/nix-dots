{ pkgs, ... }:

{
    imports = [
      ./programs
      ./shell
    ];

    home.username = "ben";
    home.homeDirectory = "/home/ben";
    programs.git.enable = true;
    home.stateVersion = "25.11";

    home.packages = with pkgs; [
	tmux
	fastfetch
    ];
}
