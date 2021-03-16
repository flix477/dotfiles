{ pkgs, sources }:
let
  resolvePlugins = import ./resolve-plugins.nix { inherit pkgs sources; };
in {
  enable = true;

  extraConfig = builtins.readFile ./vimrc;

  plugins = resolvePlugins [
    "ale"
    "vim-wordmotion"
    "VimCompletesMe"
    "vim-polyglot"
  ];
}
