{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "pipopo";
    userEmail = "puchi.maru.milk@gmail.com";
    
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
