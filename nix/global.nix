{ pkgs }:
{
  environment.systemPackages = with pkgs; [
    curl
    vim
  ];

  environment.shells = [ pkgs.fish ];
  programs.fish.enable = true;
}
