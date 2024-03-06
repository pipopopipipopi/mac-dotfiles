{
  nix = {
    gc = {
      automatic = true;
      options = "--delete-older-than 7d";
    };
    settings = {
      substituters = [
        "https://cache.nixos.org"
	    "https://nix-community.cachix.org"
      ];
    };
  };
  nixpkgs.config.allowUnfree = true;
  services.nix-daemon.enable = true;
}
