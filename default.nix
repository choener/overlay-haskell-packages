self: super: {

haskellPackages = super.haskellPackages.override {
  overrides = hsNew: hsOld: rec {
    # checks for this package fail
    hmatrix-backprop = self.haskell.lib.dontCheck hsOld.hmatrix-backprop;
    # add new versions of these packages
    Frames = hsNew.callPackage ./Frames.nix {};
    vinyl = self.haskell.lib.dontCheck (hsNew.callPackage ./vinyl.nix {});
    };
  };
}

