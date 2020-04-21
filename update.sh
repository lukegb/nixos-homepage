#! /bin/sh

UPDATE=1 nix run nixpkgs#gnumake nixpkgs#curl -c make update --keep-going || true

nix flake update --recreate-lock-file || true