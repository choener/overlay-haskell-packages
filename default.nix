self: super: {

haskellPackages = super.haskellPackages.override {
  overrides = hsNew: hsOld: rec {

    # checks for this package fail
    # backprop = hsOld.backprop_0_2_6_1 or hsOld.backprop;
    #hmatrix-backprop = self.haskell.lib.dontCheck (hsOld.hmatrix-backprop_0_1_2_4 or hsOld.hmatrix-backprop);
    hmatrix-backprop = self.haskell.lib.dontHaddock (self.haskell.lib.dontCheck (hsNew.callHackage "hmatrix-backprop" "0.1.2.5" {}));
    # hmatrix-vector-sized = self.haskell.lib.dontCheck hsOld.hmatrix-vector-sized;
    #zeromq4-haskell = self.haskell.lib.dontCheck hsOld.zeromq4-haskell;
    #zeromq4-haskell = self.haskellPackages.callHackage "zeromq4-haskell" "0.8.0" {};

    # add new versions of these packages
    #Frames = self.haskell.lib.dontCheck (hsNew.callPackage ./Frames.nix {});
    # vinyl = self.haskell.lib.dontCheck (hsNew.callPackage ./vinyl.nix {});
    # vinyl = hsOld.vinyl_0_10_0 or hsOld.vinyl;
    # megaparsec = hsOld.megaparsec_7_0_0 or hsOld.megaparsec;
    semirings = hsNew.callPackage ./semirings.nix {};
    Chart-diagrams = hsNew.callPackage ./Chart-diagrams.nix {};
    Chart = hsNew.callPackage ./Chart.nix {};

    # SVGFonts = (self.haskellPackages.callHackage "SVGFonts" "1.6.0.3" {}); # or hsOld.SVGFonts;
    # SVGFonts = (self.haskell.lib.packageSourceOverrides { SVGfonts = "1.6.0.3"; } self super).SVGfonts;
    # time = hsOld.time_1_9_2 or hsOld.time;

    }; # overrides
  }; # override
}

