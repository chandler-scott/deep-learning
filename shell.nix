let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell {
  buildInputs = [
    pkgs.python311
    pkgs.poetry
    pkgs.stdenv.cc.cc.lib
  ];

  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";

  shellHook = ''
    poetry install
    echo "Environment ready for pytorch Development."
  '';
}

