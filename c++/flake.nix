{
    description = "G++ compiler with C++14 standard";
    inputs = {
        nixpkgs.url = github:NixOS/nixpkgs;
        flake-utils.url = github:numtide/flake-utils;
    };
    outputs = { self, nixpkgs, flake-utils }: 
        flake-utils.lib.eachDefaultSystem (system:
            let
                pkgs = import nixpkgs { inherit system; };
            in
            {
                devShell = pkgs.mkShell { 
                    buildInputs = [ 
                        pkgs.gpp
                        pkgs.gdb
                    ];
                    shellHook = ''
                    rm -R -f debugger
                    ln -s "${pkgs.gdb.out}" "debugger"
                    echo C++!
                    '';
                    BUILD_COMMAND = "g++ -Wall -Werror -std=c++11 -o main main.cpp";
                    TEST_COMMAND  = "echo \"TEST_COMMAND in flake.nix is empty!\"";
                };
            });
}
