{ pkgs, ... }:

{
    home.username = "ben";
    home.homeDirectory = "/home/ben";
    programs.git.enable = true;
    home.stateVersion = "25.11";
    programs.bash = {
        enable = true;
        shellAliases = {
            btw = "echo total nix n00b xd";
        };
    };

    home.packages = with pkgs; [
	tmux
	fastfetch
	firefox
    ];
}
