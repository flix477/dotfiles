{ pkgs, sources }:
{
  fish.enable = true;

  vim = import ./vim/default.nix { inherit pkgs sources; };
}
