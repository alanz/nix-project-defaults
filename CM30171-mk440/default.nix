# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, alex, attoparsec, dataDefault, filepath, lens, mtl
, semigroups, text
}:

cabal.mkDerivation (self: {
  pname = "CM30171-mk440";
  version = "0.1.0.0";
  src = /home/shana/programming/CM30171-mk440;
  buildDepends = [
    attoparsec dataDefault filepath lens mtl semigroups text
  ];
  buildTools = [ alex ];
  meta = {
    homepage = "https://github.com/Fuuzetsu/CM30171-mk440";
    description = "Coursework material of CM30171";
    license = self.stdenv.lib.licenses.gpl3;
    platforms = self.ghc.meta.platforms;
  };
})