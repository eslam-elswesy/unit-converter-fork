import 'package:units_converter/locale/locale_file.dart';
import 'package:units_converter/models/conversion_node.dart';
import 'package:units_converter/models/double_property.dart';
import 'package:units_converter/models/property.dart';
import 'package:units_converter/models/unit.dart';

//Available VOLUME units //todo tt
enum VOLUME {
  cubicMeters,
  liters,
  imperialGallons,
  usGallons,
  imperialPints,
  usPints,
  milliliters,
  tablespoonsUs,
  australianTablespoons,
  cups,
  cubicCentimeters,
  cubicFeet,
  cubicInches,
  cubicMillimeters,
  imperialFluidOunces,
  usFluidOunces,
  imperialGill,
  usGill,
  usQuarts,
  femtoliters,
  picoliters,
  nanoliters,
  microliters,
  deciliters,
  centiliters,
}

class Volume extends DoubleProperty<VOLUME> {
  ///Class for volume conversions, e.g. if you want to convert 1 liter in US Gallons:
  ///```dart
  ///var volume = Volume(removeTrailingZeros: false);
  ///volume.convert(Unit(VOLUME.liters, value: 1));
  ///print(VOLUME.us_gallons);
  /// ```
  Volume(
      {super.significantFigures,
      super.removeTrailingZeros,
      super.useScientificNotation,
      name})
      : super(
          name: name ?? PROPERTY.volume,
          nameAr: volumeNameAR,
          nameSp: volumeNameSP,
          mapSymbols: volumeSymbolsEN,
          mapSymbolsAr: volumeSymbolsAR,
          mapSymbolsSp: volumeSymbolsSP,
          backendKey:{
            VOLUME.cubicMeters: "m3",
            VOLUME.liters: "l",
            VOLUME.imperialGallons: "gal",
            VOLUME.usGallons: "Gl",
            VOLUME.imperialPints: "",
            VOLUME.usPints: "",
            VOLUME.milliliters: "ml",
            VOLUME.tablespoonsUs: "",
            VOLUME.australianTablespoons: "",
            VOLUME.cups: "cup",
            VOLUME.cubicCentimeters: "cm3",
            VOLUME.cubicFeet: "ft3",
            VOLUME.cubicInches: "in3",
            VOLUME.cubicMillimeters: "mm3",
            VOLUME.imperialFluidOunces: "fl-oz",
            VOLUME.usFluidOunces: "fl-oz",
            VOLUME.imperialGill: "",
            VOLUME.usGill: "",
            VOLUME.usQuarts:"",
            VOLUME.femtoliters: "",
            VOLUME.picoliters: "",
            VOLUME.nanoliters: "",
            VOLUME.microliters: "",
            VOLUME.deciliters:"dl",
            VOLUME.centiliters: "cl",
          },
          systemNeed: {
            VOLUME.cubicMeters: UnitSystemNeed.yes,
            VOLUME.liters: UnitSystemNeed.yes,
            VOLUME.imperialGallons: UnitSystemNeed.yes,
            VOLUME.usGallons: UnitSystemNeed.yes,
            VOLUME.imperialPints: UnitSystemNeed.no,
            VOLUME.usPints: UnitSystemNeed.no,
            VOLUME.milliliters: UnitSystemNeed.yes,
            VOLUME.tablespoonsUs: UnitSystemNeed.no,
            VOLUME.australianTablespoons: UnitSystemNeed.no,
            VOLUME.cups: UnitSystemNeed.yes,
            VOLUME.cubicCentimeters: UnitSystemNeed.yes,
            VOLUME.cubicFeet: UnitSystemNeed.yes,
            VOLUME.cubicInches: UnitSystemNeed.yes,
            VOLUME.cubicMillimeters: UnitSystemNeed.yes,
            VOLUME.imperialFluidOunces: UnitSystemNeed.yes,
            VOLUME.usFluidOunces: UnitSystemNeed.yes,
            VOLUME.imperialGill: UnitSystemNeed.no,
            VOLUME.usGill: UnitSystemNeed.no,
            VOLUME.usQuarts:UnitSystemNeed.no,
            VOLUME.femtoliters: UnitSystemNeed.no,
            VOLUME.picoliters: UnitSystemNeed.no,
            VOLUME.nanoliters: UnitSystemNeed.no,
            VOLUME.microliters: UnitSystemNeed.no,
            VOLUME.deciliters: UnitSystemNeed.no,
            VOLUME.centiliters: UnitSystemNeed.no,
          },
          systemType: {
            VOLUME.cubicMeters: UnitSystemType.metric,
            VOLUME.liters: UnitSystemType.metric,
            VOLUME.imperialGallons: UnitSystemType.imperial,
            VOLUME.usGallons: UnitSystemType.metric,
            VOLUME.imperialPints: UnitSystemType.metric,
            VOLUME.usPints: UnitSystemType.metric,
            VOLUME.milliliters: UnitSystemType.metric,
            VOLUME.tablespoonsUs: UnitSystemType.metric,
            VOLUME.australianTablespoons: UnitSystemType.metric,
            VOLUME.cups: UnitSystemType.imperial,
            VOLUME.cubicCentimeters: UnitSystemType.metric,
            VOLUME.cubicFeet: UnitSystemType.imperial,
            VOLUME.cubicInches: UnitSystemType.imperial,
            VOLUME.cubicMillimeters: UnitSystemType.imperial,
            VOLUME.imperialFluidOunces: UnitSystemType.imperial,
            VOLUME.usFluidOunces: UnitSystemType.metric,
            VOLUME.imperialGill: UnitSystemType.imperial,
            VOLUME.usGill: UnitSystemType.metric,
            VOLUME.usQuarts: UnitSystemType.metric,
            VOLUME.femtoliters: UnitSystemType.metric,
            VOLUME.picoliters: UnitSystemType.metric,
            VOLUME.nanoliters: UnitSystemType.metric,
            VOLUME.microliters: UnitSystemType.metric,
            VOLUME.deciliters: UnitSystemType.metric,
            VOLUME.centiliters: UnitSystemType.metric,
          },
          conversionTree: ConversionNode(name: VOLUME.cubicMeters, leafNodes: [
            ConversionNode(
                coefficientProduct: 1e-3,
                name: VOLUME.liters,
                leafNodes: [
                  ConversionNode(
                    coefficientProduct: 4.54609,
                    name: VOLUME.imperialGallons,
                  ),
                  ConversionNode(
                    coefficientProduct: 3.785411784,
                    name: VOLUME.usGallons,
                  ),
                  ConversionNode(
                    coefficientProduct: 0.56826125,
                    name: VOLUME.imperialPints,
                    leafNodes: [
                      ConversionNode(
                        coefficientProduct: 1 / 20,
                        name: VOLUME.imperialFluidOunces,
                        leafNodes: [
                          ConversionNode(
                              coefficientProduct: 5, name: VOLUME.imperialGill),
                        ],
                      ),
                    ],
                  ),
                  ConversionNode(
                    coefficientProduct: 0.473176473,
                    name: VOLUME.usPints,
                    leafNodes: [
                      ConversionNode(
                        coefficientProduct: 1 / 16,
                        name: VOLUME.usFluidOunces,
                        leafNodes: [
                          ConversionNode(
                            coefficientProduct: 4,
                            name: VOLUME.usGill,
                          ),
                        ],
                      ),
                      ConversionNode(
                        coefficientProduct: 2,
                        name: VOLUME.usQuarts,
                      )
                    ],
                  ),
                  ConversionNode(
                      coefficientProduct: 1e-3,
                      name: VOLUME.milliliters,
                      leafNodes: [
                        ConversionNode(
                          coefficientProduct: 14.8,
                          name: VOLUME.tablespoonsUs,
                        ),
                        ConversionNode(
                          coefficientProduct: 20.0,
                          name: VOLUME.australianTablespoons,
                        ),
                        ConversionNode(
                          coefficientProduct: 240.0,
                          name: VOLUME.cups,
                        ),
                      ]),
                  ConversionNode(
                    coefficientProduct: 0.1,
                    name: VOLUME.deciliters,
                  ),
                  ConversionNode(
                    coefficientProduct: 0.01,
                    name: VOLUME.centiliters,
                  ),
                  ConversionNode(
                    coefficientProduct: 1e-6,
                    name: VOLUME.microliters,
                  ),
                  ConversionNode(
                    coefficientProduct: 1e-9,
                    name: VOLUME.nanoliters,
                  ),
                  ConversionNode(
                    coefficientProduct: 1e-12,
                    name: VOLUME.picoliters,
                  ),
                  ConversionNode(
                    coefficientProduct: 1e-15,
                    name: VOLUME.femtoliters,
                  ),
                ]),
            ConversionNode(
                coefficientProduct: 1e-6,
                name: VOLUME.cubicCentimeters,
                leafNodes: [
                  ConversionNode(
                      coefficientProduct: 16.387064,
                      name: VOLUME.cubicInches,
                      leafNodes: [
                        ConversionNode(
                          coefficientProduct: 1728.0,
                          name: VOLUME.cubicFeet,
                        ),
                      ]),
                ]),
            ConversionNode(
              coefficientProduct: 1e-9,
              name: VOLUME.cubicMillimeters,
            ),
          ]),
        );

  Unit get cubicMeters => getUnit(VOLUME.cubicMeters);
  Unit get liters => getUnit(VOLUME.liters);
  Unit get imperialGallons => getUnit(VOLUME.imperialGallons);
  Unit get usGallons => getUnit(VOLUME.usGallons);
  Unit get imperialPints => getUnit(VOLUME.imperialPints);
  Unit get usPints => getUnit(VOLUME.usPints);
  Unit get milliliters => getUnit(VOLUME.milliliters);
  Unit get tablespoonsUs => getUnit(VOLUME.tablespoonsUs);
  Unit get australianTablespoons => getUnit(VOLUME.australianTablespoons);
  Unit get cups => getUnit(VOLUME.cups);
  Unit get cubicCentimeters => getUnit(VOLUME.cubicCentimeters);
  Unit get cubicFeet => getUnit(VOLUME.cubicFeet);
  Unit get cubicInches => getUnit(VOLUME.cubicInches);
  Unit get cubicMillimeters => getUnit(VOLUME.cubicMillimeters);
  Unit get imperialFluidOunces => getUnit(VOLUME.imperialFluidOunces);
  Unit get usFluidOunces => getUnit(VOLUME.usFluidOunces);
  Unit get imperialGill => getUnit(VOLUME.imperialGill);
  Unit get usGill => getUnit(VOLUME.usGill);
  Unit get usQuarts => getUnit(VOLUME.usQuarts);
  Unit get femtoliter => getUnit(VOLUME.femtoliters);
  Unit get picoliter => getUnit(VOLUME.picoliters);
  Unit get nanoliter => getUnit(VOLUME.nanoliters);
  Unit get microliter => getUnit(VOLUME.microliters);
  Unit get deciliter => getUnit(VOLUME.deciliters);
  Unit get centiliter => getUnit(VOLUME.centiliters);
}
