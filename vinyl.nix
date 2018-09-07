{ mkDerivation, aeson, array, base, criterion, doctest, ghc-prim
, hspec, lens, lens-aeson, linear, microlens, mtl, mwc-random
, primitive, should-not-typecheck, singletons, stdenv, tagged, text
, unordered-containers, vector
}:
mkDerivation {
  pname = "vinyl";
  version = "0.10.0";
  sha256 = "95c81a4cf490c7a5641677c911a52f6c0e16905d757d4601576cbe146baa34b4";
  libraryHaskellDepends = [ array base ghc-prim ];
  testHaskellDepends = [
    aeson base doctest hspec lens lens-aeson microlens mtl
    should-not-typecheck singletons text unordered-containers vector
  ];
  benchmarkHaskellDepends = [
    base criterion linear microlens mwc-random primitive tagged vector
  ];
  description = "Extensible Records";
  license = stdenv.lib.licenses.mit;
}
