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
    httpie
    ripgrep

    unzip
    zip

    # Rice
    neofetch
    onefetch
  ];
}
