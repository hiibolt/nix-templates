{
  # Tremendous thanks to @oati for her help
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }: 
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        packages = {
          default = pkgs.callPackage ./my-package.nix {};
        };
        devShells.x86_64-linux.default = with pkgs; mkShell {
          buildInputs = [ cargo rustc rustfmt rust-analyzer clippy ];
          shellHook = 
            ''
            source enviro/bin/activate
            '';
          RUST_SRC_PATH = rustPlatform.rustLibSrc;
        };
    });
}
