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

  fonts = {
    fontDir.enable = true;

    fonts = with pkgs; [
      hackgen-nf-font
    ];
  };
}
