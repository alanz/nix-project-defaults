# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, Cabal, filepath, haddockApi }:

cabal.mkDerivation (self: {
  pname = "haddock";
  version = "2.15.0";
  src = /home/shana/programming/haddock;
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ haddockApi ];
  testDepends = [ Cabal filepath ];
  doCheck = true;
  preCheck = "unset GHC_PACKAGE_PATH";
  meta = {
    homepage = "http://www.haskell.org/haddock/";
    description = "A documentation-generation tool for Haskell libraries";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
