{ mkDerivation, base, containers, ghc, mtl, stdenv
, template-haskell, transformers
}:
mkDerivation {
  pname = "inspection-testing";
  version = "0.4.2.1";
  sha256 = "cd6517bdeb3610dd152c4615b94fed0dc3e0d7760ff032a58ef4cfa88ef486ab";
  libraryHaskellDepends = [
    base containers ghc mtl template-haskell transformers
  ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/nomeata/inspection-testing";
  description = "GHC plugin to do inspection testing";
  license = stdenv.lib.licenses.mit;
}
