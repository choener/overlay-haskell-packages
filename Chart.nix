{ mkDerivation, array, base, colour, data-default-class, lens, mtl
, old-locale, operational, stdenv, time, vector
}:
mkDerivation {
  pname = "Chart";
  version = "1.9.1";
  sha256 = "34a1c7f2dd46029efa471689ec3b8ab63321223fbe23d86a5ab4bb986619c7de";
  libraryHaskellDepends = [
    array base colour data-default-class lens mtl old-locale
    operational time vector
  ];
  homepage = "https://github.com/timbod7/haskell-chart/wiki";
  description = "A library for generating 2D Charts and Plots";
  license = stdenv.lib.licenses.bsd3;
}
