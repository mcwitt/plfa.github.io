{ pkgs ? import <nixpkgs> { } }:

let
  nixpkgs = import (pkgs.fetchFromGitHub {
    owner = "NixOS";
    repo = "nixpkgs";
    rev = "0f5ce2fac0c726036ca69a5524c59a49e2973dd4";
    sha256 = "0nkk492aa7pr0d30vv1aw192wc16wpa1j02925pldc09s9m9i0r3";
  }) { };

  agdaWithPackages =
    nixpkgs.agda.withPackages (ps: with ps; [ standard-library ]);

in pkgs.mkShell { buildInputs = [ agdaWithPackages ]; }
