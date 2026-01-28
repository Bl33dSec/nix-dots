{ ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;

    bashrcExtra = ''
      PS1='\u \[\e[1m\]on\[\e[0m\] \H \[\e[1m\]at\[\e[0m\] \W \\$ '
    '';
  };
}
