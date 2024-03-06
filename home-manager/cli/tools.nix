{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    bottom
    eza
    fd
    fzf
    ripgrep

    # Rice
    neofetch
    onefetch
  ];
}
