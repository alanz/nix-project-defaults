# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, binary, concreteTyperep, hashable, unorderedContainers }:

cabal.mkDerivation (self: {
  pname = "dynamic-state";
  version = "0.1.1.0";
  src = /home/shana/programming/dynamic-state;
  buildDepends = [
    binary concreteTyperep hashable unorderedContainers
  ];
  meta = {
    description = "Optionally serializable dynamic state keyed by type";
    license = self.stdenv.lib.licenses.gpl2;
    platforms = self.ghc.meta.platforms;
  };
})
