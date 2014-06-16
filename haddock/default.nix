{ haskellPackages ? (import <nixpkgs> {}).myHaskellPackages_ghcHEAD
, haddockLibrary ? (import /home/shana/programming/haddock/haddock-library {})
}:

haskellPackages.cabal.mkDerivation (self: {
  pname = "haddock";
  version = "2.15.0";
  src = /home/shana/programming/haddock/src;
  buildDepends = with haskellPackages;
                   [ Cabal deepseq filepath ghcPaths xhtml haddockLibrary ];
  testDepends = with haskellPackages; [ Cabal deepseq filepath hspec QuickCheck ];
  isLibrary = true;
  isExecutable = true;
  enableSplitObjs = false;
  noHaddock = true;
})