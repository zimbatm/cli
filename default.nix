let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {
    config = {};
    overlays = [];
  };
  yarn2nix = import sources.yarn2nix { inherit pkgs; };
in
  yarn2nix.mkYarnPackage {
    name = "netlify-cli";
    src = ./.;
  }
