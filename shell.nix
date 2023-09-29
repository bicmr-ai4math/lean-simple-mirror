let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = with pkgs; [
      alejandra
      gcc
      darwin.apple_sdk.frameworks.Security
      libiconv
      curl
      openssl.dev
      perl
    ];
  }
