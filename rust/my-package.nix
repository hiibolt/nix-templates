{ rustPlatform, ... }:
rustPlatform.buildRustPackage rec {
  pname = "my-program-name";
  version = "0.1.0";

  src = ./.;
  cargoLock = {
    lockFile = ./Cargo.lock;
  };
}
