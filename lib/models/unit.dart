class Unit {
  /// The value of the unit of measurement.
  double? value;

  /// The String representation of [value]. It could be changed according to
  /// other parameters of the property (e.g. `significantFigures`,
  /// `removeTrailingZeros` and `useScientificNotation`).
  String? stringValue;

  /// The name of the unit (e.g. LENGTH.meters, VOLUME.liters).
  // ignore: prefer_typing_uninitialized_variables
  var name;
  var nameAr;
  var nameSp;

  /// The symbols that represent the unit (e.g. "m" stands for meters, "l"
  /// stands for liter).
  String? symbol;
  String? symbolAr;
  String? symbolSp;
  UnitSystemNeed? systemNeed;
  UnitSystemType? systemType;//Metric or Imperial
  String? backendKey;

  /// The class that defines a unit of measurement object.
  Unit(this.name, {this.systemNeed,this.systemType,this.backendKey,this.value,this.nameAr,this.symbolAr,this.symbolSp,this.nameSp, this.stringValue, this.symbol});
}

enum UnitSystemType{
  metric,
  imperial
}

enum UnitSystemNeed{
  yes,
  no
}
