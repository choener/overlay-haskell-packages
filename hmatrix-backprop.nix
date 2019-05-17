{ mkDerivation, backprop, base, finite-typelits
, ghc-typelits-knownnat, ghc-typelits-natnormalise, hedgehog
, hmatrix, hmatrix-vector-sized, microlens, microlens-platform
, stdenv, vector, vector-sized, vinyl
}:
mkDerivation {
  pname = "hmatrix-backprop";
  version = "0.1.2.5";
  sha256 = "4ebb6e5073bd6652fcac22275e47411ca1076699100bc928a692a1c7f6aed1d4";
  libraryHaskellDepends = [
    backprop base ghc-typelits-knownnat ghc-typelits-natnormalise
    hmatrix hmatrix-vector-sized microlens vector vector-sized vinyl
  ];
  testHaskellDepends = [
    backprop base finite-typelits hedgehog hmatrix hmatrix-vector-sized
    microlens microlens-platform vector-sized vinyl
  ];
  homepage = "https://github.com/mstksg/hmatrix-backprop#readme";
  description = "hmatrix operations lifted for backprop";
  license = stdenv.lib.licenses.bsd3;
}
