with builtins;

{ pkgs, sources }:
let
  getPlugin = name: (
    if (hasAttr name pkgs.vimPlugins)
    then (getAttr name pkgs.vimPlugins)
    else (pkgs.vimUtils.buildVimPlugin {
      name = name;
      src = getAttr name sources;
    })
  );

in map getPlugin
