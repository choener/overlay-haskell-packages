self: super: {

haskellPackages = super.haskellPackages.override {
  overrides = hsNew: hsOld: rec {

    # checks for this package fail
    backprop = hsOld.backprop_0_2_6_1 or hsOld.backprop;
    hmatrix-backprop = self.haskell.lib.dontCheck hsOld.hmatrix-backprop_0_1_2_4 or hsOld.hmatrix-backprop;
    hmatrix-vector-sized = self.haskell.lib.dontCheck hsOld.hmatrix-vector-sized;

    # add new versions of these packages
    #Frames = self.haskell.lib.dontCheck (hsNew.callPackage ./Frames.nix {});
    # vinyl = self.haskell.lib.dontCheck (hsNew.callPackage ./vinyl.nix {});
    vinyl = hsOld.vinyl_0_10_0 or hsOld.vinyl;
    megaparsec = hsOld.megaparsec_7_0_0 or hsOld.megaparsec;

    }; # overrides
  }; # override
}

