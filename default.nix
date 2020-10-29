# Overrides for haskell packages

self: super: {

  unbreak = drv: self.haskell.lib.overrideCabal drv (drv: { broken=false; });

haskellPackages = super.haskellPackages.override {
  overrides = hself: hsuper: rec {

    }; # overrides
  }; # override
}

