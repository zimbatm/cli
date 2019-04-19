let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {
    config = {};
    overlays = [];
  };
in
  with pkgs;

  mkShell {
    buildInputs = [
      yarn
    ];
  }
