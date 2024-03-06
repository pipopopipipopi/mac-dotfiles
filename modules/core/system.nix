{ pkgs, ... }:

{
  system = {
    defaults = {
      menuExtraClock.Show24Hour = true;
    };
  };

  security.pam.enableSudoTouchIdAuth = true;

  programs.fish.enable = true;
  programs.zsh.enable = true;
}
