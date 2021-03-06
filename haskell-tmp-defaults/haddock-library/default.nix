{ cabal, baseCompat, deepseq, hspec, QuickCheck }:

cabal.mkDerivation (self: {
  pname = "haddock-library";
  version = "1.1.0";
  src = /home/shana/programming/haddock/haddock-library;
  buildDepends = [ deepseq ];
  testDepends = [ baseCompat deepseq hspec QuickCheck ];
  meta = {
    homepage = "http://www.haskell.org/haddock/";
    description = "Library exposing some functionality of Haddock";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
