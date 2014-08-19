# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, fsnotify, systemFilepath, temporary, gtk3hs, glib, ... }:

cabal.mkDerivation (self: {
  pname = "tsuntsun";
  version = "0.1.0.0";
  src = /home/shana/programming/tsuntsun;
  isLibrary = false;
  isExecutable = true;
  buildDepends = [ fsnotify systemFilepath temporary gtk3hs glib ];
  meta = {
    homepage = "https://github.com/Fuuzetsu/tsuntsun";
    description = "Interacts with tesseract to ease reading of RAW Japanese manga";
    license = self.stdenv.lib.licenses.gpl3;
    platforms = self.ghc.meta.platforms;
  };
})