{ cabal, bitsExtras, cpu, hspec, QuickCheck }:

cabal.mkDerivation (self: {
  pname = "base32-bytestring";
  version = "0.2.1.0";
  sha256 = "0z0q3fw3jzprgxmq9b2iz98kf4hwl3nydrzlaiwk81aplisfdgkl";
  buildDepends = [ bitsExtras cpu ];
  testDepends = [ hspec QuickCheck ];
  meta = {
    homepage = "https://github.com/pxqr/base32-bytestring";
    description = "Fast base32 and base32hex codec for ByteStrings";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
