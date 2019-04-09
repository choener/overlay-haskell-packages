{ mkDerivation, base, blaze-markup, bytestring, Chart, colour
, containers, data-default-class, diagrams-core, diagrams-lib
, diagrams-postscript, diagrams-svg, lens, mtl, old-locale
, operational, stdenv, svg-builder, SVGFonts, text, time
}:
mkDerivation {
  pname = "Chart-diagrams";
  version = "1.9.2";
  sha256 = "96b4bfd1d2f9fae2962defc4f6b73e0490acebb590cfbb3997f12a82260ba52a";
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base blaze-markup bytestring Chart colour containers
    data-default-class diagrams-core diagrams-lib diagrams-postscript
    diagrams-svg lens mtl old-locale operational svg-builder SVGFonts
    text time
  ];
  homepage = "https://github.com/timbod7/haskell-chart/wiki";
  description = "Diagrams backend for Charts";
  license = stdenv.lib.licenses.bsd3;
}
