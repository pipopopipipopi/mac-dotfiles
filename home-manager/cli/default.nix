{ pkgs, ...}:

{
  imports = [
    ./fish
    ./neovim

    ./development.nix
    ./git.nix
    ./tools.nix
  ];
}
