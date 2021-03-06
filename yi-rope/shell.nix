let pkgs = import <nixpkgs> {};
    myHaskellPackages = pkgs.myHaskellPackages;
    haskellPackages = myHaskellPackages.override {
      extension = self: super: {
        yiRope = myHaskellPackages.callPackage ./. {};
      };
    };
in pkgs.lib.overrideDerivation haskellPackages.yiRope (attrs: {
  noHaddock = true;
  buildInputs = [ ] ++ attrs.buildInputs;
})
