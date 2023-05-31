with (import <nixpkgs> { });
mkShell {
  buildInputs = [
    gcc-arm-embedded
    cmake
    nodejs-19_x
  ];
  shellHook = ''
    # export PICO_SDK_PATH=../pico-sdk
  '';
}

