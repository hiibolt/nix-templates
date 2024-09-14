{
  description = "Development environment for Python";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  outputs = { self, nixpkgs }: 
    let
      system = "x86_64-linux";
      
      pkgs = import nixpkgs { 
        inherit system;
      };
    in
    {
    devShells.x86_64-linux.default = pkgs.mkShell {
      buildInputs = [ pkgs.bend ];
      shellHook = 
        ''
        '';
      
    };
  };
}