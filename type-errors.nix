{ mkDerivation, base, doctest, first-class-families, stdenv, syb
, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "type-errors";
  version = "0.2.0.0";
  sha256 = "174d509c30ec806117a244add923fee578ba5f3505b0156f4e03a32023892eb4";
  libraryHaskellDepends = [
    base first-class-families syb template-haskell th-abstraction
  ];
  testHaskellDepends = [
    base doctest first-class-families syb template-haskell
    th-abstraction
  ];
  homepage = "https://github.com/isovector/type-errors#readme";
  description = "Tools for writing better type errors";
  license = stdenv.lib.licenses.bsd3;
}
