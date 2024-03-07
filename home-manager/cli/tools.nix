{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    bottom
    eza
    fd
    felix-fm
    fzf
    gitui
    ripgrep

    # Rice
    neofetch
    onefetch
  ];
}
