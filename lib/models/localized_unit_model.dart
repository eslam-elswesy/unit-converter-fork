import 'package:units_converter/models/unit.dart';

class LocalizedUnit {
  /// The value of the unit of measurement.
  double? value;

  /// The String representation of [value]. It could be changed according to
  /// other parameters of the property (e.g. `significantFigures`,
  /// `removeTrailingZeros` and `useScientificNotation`).
  String? stringValue;

  /// The name of the unit (e.g. LENGTH.meters, VOLUME.liters).
  // ignore: prefer_typing_uninitialized_variables
  var name;

  /// The symbols that represent the unit (e.g. "m" stands for meters, "l"
  /// stands for liter).
  String? symbol;
  String? backendKey;
  UnitSystemType? systemType;

  /// The class that defines a unit of measurement object.
  LocalizedUnit(this.name, {this.value,this.backendKey,this.systemType, this.stringValue, this.symbol});
}
