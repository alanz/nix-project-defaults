# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, Cabal, doctest, filepath, hackageDb, mtl, regexPosix
, transformers
}:

let pkgs = import <nixpkgs> {};
    lib = pkgs.lib;
    sr  = "/home/shana/programming/cabal2nix";
    file = builtins.readFile (sr + "/cabal2nix.cabal");
    strs = lib.strings.splitString "\n" file;
    vstr = builtins.head (builtins.filter (s: lib.strings.hasPrefix "Version:" s) strs);
    vrsn = lib.strings.removePrefix "Version:" (lib.strings.replaceChars [" "] [""] vstr);

in
cabal.mkDerivation (self: {
  pname = "cabal2nix";
  version = vrsn;
  src = sr;
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    Cabal filepath hackageDb mtl regexPosix transformers
  ];
  testDepends = [ doctest ];
  doCheck = self.stdenv.lib.versionOlder "7.6" self.ghc.version;
  meta = {
    homepage = "http://github.com/NixOS/cabal2nix";
    description = "Convert Cabal files into Nix build instructions";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
