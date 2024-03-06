{ pkgs, ... }:

{
  home.file.".config/nvim" = {
    source = ./.;
    recursive = true;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;

    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      lazy-nvim
    ];
  };
}
