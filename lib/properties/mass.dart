import 'package:units_converter/locale/locale_file.dart';
import 'package:units_converter/models/conversion_node.dart';
import 'package:units_converter/models/double_property.dart';
import 'package:units_converter/models/property.dart';
import 'package:units_converter/models/unit.dart';

//Available MASS units
enum MASS {
  grams,
  ettograms,
  kilograms,
  pounds,
  ounces,
  quintals,
  tons,
  milligrams,
  femtograms,
  picograms,
  nanograms,
  micrograms,
  decigrams,
  uma,
  carats,
  centigrams,
  pennyweights,
  troyOunces,
  stones,
}

class Mass extends DoubleProperty<MASS> {
  ///Class for mass conversions, e.g. if you want to convert 1 gram in ounces:
  ///```dart
  ///var mass = Mass(removeTrailingZeros: false);
  ///mass.convert(Unit(MASS.grams, value: 1));
  ///print(MASS.ounces);

  Mass(
      {super.significantFigures,
      super.removeTrailingZeros,
      super.useScientificNotation,
      name})
      : super(
          name: name ?? PROPERTY.mass,
          nameAr: massNameAR,
          nameSp:massNameSP,
          mapSymbolsAr: massSymbolsAR,
          mapSymbols: massSymbolsEN,
          mapSymbolsSp: massSymbolsSP,
          backendKey:{
            MASS.grams: "g",
            MASS.ettograms: "",
            MASS.kilograms: "kg",
            MASS.pounds: "lb",
            MASS.ounces: "oz",
            MASS.tons: "mt",
            MASS.milligrams: "mg",
            MASS.uma: "",
            MASS.carats:"",
            MASS.centigrams:"",
            MASS.pennyweights: "",
            MASS.troyOunces: "",
            MASS.stones: "",
            MASS.femtograms: "",
            MASS.picograms: "",
            MASS.nanograms: "",
            MASS.micrograms: "mcg",
            MASS.decigrams: "",
          },
          systemNeed: {
            MASS.grams: UnitSystemNeed.yes,
            MASS.kilograms: UnitSystemNeed.yes,
            MASS.pounds: UnitSystemNeed.yes,
            MASS.ounces: UnitSystemNeed.yes,
            MASS.tons: UnitSystemNeed.yes,
            MASS.milligrams: UnitSystemNeed.yes,
            MASS.micrograms: UnitSystemNeed.yes,
            MASS.ettograms: UnitSystemNeed.no,
            MASS.uma:UnitSystemNeed.no,
            MASS.carats:UnitSystemNeed.no,
            MASS.centigrams:UnitSystemNeed.no,
            MASS.pennyweights: UnitSystemNeed.no,
            MASS.troyOunces: UnitSystemNeed.no,
            MASS.stones: UnitSystemNeed.no,
            MASS.femtograms: UnitSystemNeed.no,
            MASS.picograms: UnitSystemNeed.no,
            MASS.nanograms: UnitSystemNeed.no,
            MASS.decigrams: UnitSystemNeed.no,
          },
          systemType:  {
            MASS.grams: UnitSystemType.metric,
            MASS.ettograms: UnitSystemType.metric,
            MASS.kilograms: UnitSystemType.metric,
            MASS.pounds: UnitSystemType.imperial,
            MASS.ounces: UnitSystemType.imperial,
            MASS.tons: UnitSystemType.metric,
            MASS.milligrams: UnitSystemType.metric,
            MASS.uma: UnitSystemType.metric,
            MASS.carats:UnitSystemType.metric,
            MASS.centigrams:UnitSystemType.metric,
            MASS.pennyweights: UnitSystemType.imperial,
            MASS.troyOunces: UnitSystemType.imperial,
            MASS.stones: UnitSystemType.imperial,
            MASS.femtograms: UnitSystemType.metric,
            MASS.picograms: UnitSystemType.metric,
            MASS.nanograms: UnitSystemType.metric,
            MASS.micrograms: UnitSystemType.metric,
            MASS.decigrams: UnitSystemType.metric,
  },
          conversionTree: ConversionNode(name: MASS.grams, leafNodes: [
            ConversionNode(
              coefficientProduct: 100.0,
              name: MASS.ettograms,
            ),
            ConversionNode(
              coefficientProduct: 1000.0,
              name: MASS.kilograms,
              leafNodes: [
                ConversionNode(
                  coefficientProduct: 0.45359237,
                  name: MASS.pounds,
                  leafNodes: [
                    ConversionNode(
                      coefficientProduct: 1 / 16,
                      name: MASS.ounces,
                    ),
                    ConversionNode(
                      coefficientProduct: 14,
                      name: MASS.stones,
                    ),
                  ],
                ),
              ],
            ),
            ConversionNode(
              coefficientProduct: 100000.0,
              name: MASS.quintals,
            ),
            ConversionNode(
              coefficientProduct: 1000000.0,
              name: MASS.tons,
            ),
            ConversionNode(
              coefficientProduct: 1e-2,
              name: MASS.centigrams,
            ),
            ConversionNode(
              coefficientProduct: 1e-3,
              name: MASS.milligrams,
            ),
            ConversionNode(
              coefficientProduct: 1.660539e-24,
              name: MASS.uma,
            ),
            ConversionNode(
              coefficientProduct: 0.2,
              name: MASS.carats,
            ),
            ConversionNode(
                coefficientProduct: 1.55517384,
                name: MASS.pennyweights,
                leafNodes: [
                  ConversionNode(
                    coefficientProduct: 20,
                    name: MASS.troyOunces,
                  ),
                ]),
            ConversionNode(
              coefficientProduct: 1e-15,
              name: MASS.femtograms,
            ),
            ConversionNode(
              coefficientProduct: 1e-12,
              name: MASS.picograms,
            ),
            ConversionNode(
              coefficientProduct: 1e-9,
              name: MASS.nanograms,
            ),
            ConversionNode(
              coefficientProduct: 1e-6,
              name: MASS.micrograms,
            ),
            ConversionNode(
              coefficientProduct: 0.1,
              name: MASS.decigrams,
            ),
          ]),
        );

  Unit get grams => getUnit(MASS.grams);
  Unit get ettograms => getUnit(MASS.ettograms);
  Unit get kilograms => getUnit(MASS.kilograms);
  Unit get pounds => getUnit(MASS.pounds);
  Unit get ounces => getUnit(MASS.ounces);
  Unit get quintals => getUnit(MASS.quintals);
  Unit get tons => getUnit(MASS.tons);
  Unit get milligrams => getUnit(MASS.milligrams);
  Unit get uma => getUnit(MASS.uma);
  Unit get carats => getUnit(MASS.carats);
  Unit get centigrams => getUnit(MASS.centigrams);
  Unit get pennyweights => getUnit(MASS.pennyweights);
  Unit get troyOunces => getUnit(MASS.troyOunces);
  Unit get stones => getUnit(MASS.stones);
  Unit get femtograms => getUnit(MASS.femtograms);
  Unit get picograms => getUnit(MASS.picograms);
  Unit get nanograms => getUnit(MASS.nanograms);
  Unit get micrograms => getUnit(MASS.micrograms);
  Unit get decigrams => getUnit(MASS.decigrams);
}
