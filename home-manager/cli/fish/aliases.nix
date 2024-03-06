{
  cat = "bat";
  ls = "eza --icons always --classify always";
  la = "eza --icons always --classify always --all";
  ll = "eza --icons always --classify always --all --long --git";
  tree = "eza --icons always --classify always --tree";

  ".." = "cd ..";
  "..." = "cd ../..";
  "...." = "cd ../../..";
  "....." = "cd ../../../..";

  rebuild = "darwin-rebuild switch --flake .#MacBook-Air";
}
