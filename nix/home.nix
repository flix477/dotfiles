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
      nodejs-16_x
      pinentry_mac
      python3
      youtube-dl
      nodePackages.prettier
      p7zip
    ];

    programs = import ./programs/default.nix { inherit pkgs sources; };
  };
}
