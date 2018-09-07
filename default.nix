self: super: {

haskellPackages = super.haskellPackages.override {
  overrides = hsNew: hsOld: rec {

    # checks for this package fail
    backprop = hsOld.backprop_0_2_6_1;
    hmatrix-backprop = self.haskell.lib.dontCheck hsOld.hmatrix-backprop_0_1_2_4;

    # add new versions of these packages
    Frames = self.haskell.lib.dontCheck (hsNew.callPackage ./Frames.nix {});
    vinyl = self.haskell.lib.dontCheck (hsNew.callPackage ./vinyl.nix {});

    }; # overrides
  }; # override
}

