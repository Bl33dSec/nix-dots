{ ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    
    historySubstringSearch.enable = true;
    
    history = {
      size = 10000;
      save = 10000;
      ignoreDups = true;
      ignoreSpace = true;
    };

    oh-my-zsh = {
      enable = true;
      theme = "darkblood";
      plugins = [
	"git"
	"sudo"
      ];
    };
  };
}
