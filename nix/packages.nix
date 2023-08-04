{ pkgs, atomi, atomi_classic, pkgs-aug-01-23 }:
let
  all = {
    atomipkgs = (
      with atomi;
      with atomi_classic;
      {
        inherit
          pls
          sg;
      }
    );
    aug-01-23 = (
      with pkgs-aug-01-23;
      {
        inherit
          coreutils
          sd
          bash
          git
          treefmt
          yq-go
          jq;
        node = nodejs-18_x;
        npm = nodePackages.npm;
      }
    );
  };
in
with all;
atomipkgs //
aug-01-23
