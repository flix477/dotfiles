{ pkgs, sources }:
{
  useUserPackages = true;
  useGlobalPkgs = true;

  users.felixleveille = { pkgs, ... }: {
    home.packages = with pkgs; [
      ascii
      gitFull
      gnupg
      httpie
      niv
      nmap
      nodejs-15_x
      pinentry_mac
      python3
      youtube-dl
      nodePackages.prettier
    ];

    programs = import ./programs/default.nix { inherit pkgs sources; };
  };
}
