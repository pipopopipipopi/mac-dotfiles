{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    bottom
    eza
    fd
    fzf
    gitui
    ripgrep

    # Rice
    neofetch
    onefetch
  ];
}
