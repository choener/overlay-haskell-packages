self: super: {

haskellPackages = super.haskellPackages.override {
  overrides = hsNew: hsOld: rec {
    # checks for this package fail
    hmatrix-backprop = super.haskell.lib.dontCheck super.haskellPackages.hmatrix-backprop;
    };
  };
}

