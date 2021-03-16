{ pkgs, ... }:
with builtins;
let
  global = import ../../global.nix { inherit pkgs; };
  sources = import ../../sources.nix;
in global // {
  imports = [ <home-manager/nix-darwin> ];

  environment.darwinConfig = "$HOME/Code/nix-dotfiles/nix/platforms/darwin/default.nix";
  system = import ./system.nix;
  home-manager = import ../../home.nix { inherit pkgs sources; };

  users.nix.configureBuildUsers = true;
}
