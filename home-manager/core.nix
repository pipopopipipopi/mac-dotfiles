{ username, ... }:

{
  home = {
    username = username;
    homeDirectory = "/Users/${username}";

    stateVersion = "24.05";
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  programs.home-manager.enable = true;
}
