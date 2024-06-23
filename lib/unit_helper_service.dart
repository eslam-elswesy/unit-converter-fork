import 'package:units_converter/models/localized_unit_model.dart';
import 'package:units_converter/units_converter.dart';

class UnitConverterHelper {
  static Mass mass = Mass();
  static Volume volume = Volume();

  static List<LocalizedUnit> metricMassUnit = [];
  static List<LocalizedUnit> imperialMassUnit = [];

  static List<LocalizedUnit> metricVolumeUnit = [];
  static List<LocalizedUnit> imperialVolumeUnit = [];

  // if I need to get those list at the start of the app
  static init(UnitSystemType unitSystemType, {String selectedLanguage = "en"}) {
    getMetricMassUnitsList(selectedLanguage: selectedLanguage);
    getImperialMassUnitsList(selectedLanguage: selectedLanguage);
    getMetricVolumeUnitsList(selectedLanguage: selectedLanguage);
    getImperialVolumeUnitsList(selectedLanguage: selectedLanguage);
  }

//////////////////// MASS Methods ///////////////////////
  static List<LocalizedUnit> getMassUnitsListBySystemType(
      UnitSystemType unitSystemType,
      {String selectedLanguage = "en"}) {
    return unitSystemType == UnitSystemType.metric
        ? getMetricMassUnitsList(selectedLanguage: selectedLanguage)
        : getImperialMassUnitsList(selectedLanguage: selectedLanguage);
  }

  static List<LocalizedUnit> getUnitsListBySystemType(
    UnitSystemType unitSystemType,
    String measurementType, {
    String selectedLanguage = "en",
  }) {

    // print("SSDD2::${unitSystemType}::$measurementType");
    List<LocalizedUnit> finalList = [];

    if (measurementType.toLowerCase() ==
        MeasurementType.weight.name.toLowerCase()) {
      finalList.addAll(getMassUnitsListBySystemType(unitSystemType,
          selectedLanguage: selectedLanguage));
    } else {
      finalList.addAll(getVolumeUnitsListBySystemType(unitSystemType,
          selectedLanguage: selectedLanguage));
    }

    return finalList;
  }

  static List<LocalizedUnit> getMetricMassUnitsList(
      {String selectedLanguage = "en"}) {
    metricMassUnit.clear();
    List<Unit> all = mass.getAll();

    for (final unit in all) {
      if (unit.systemType == UnitSystemType.metric &&
          unit.systemNeed == UnitSystemNeed.yes) {
        String name = _getLocalizedAttribute(selectedLanguage, unit, "name");
        String symbol =
            _getLocalizedAttribute(selectedLanguage, unit, "symbol");
        metricMassUnit.add(LocalizedUnit(name,
            backendKey: unit.backendKey,
            systemType: unit.systemType,
            symbol: symbol,
            stringValue: unit.name.toString()));
      }
    }
    return metricMassUnit;
  }

  static List<LocalizedUnit> getImperialMassUnitsList(
      {String selectedLanguage = "en"}) {
    imperialMassUnit.clear();
    List<Unit> all = mass.getAll();

    for (final unit in all) {
      //HINT:EH::  unit.systemNeed==UnitSystemNeed.yes to return the system needs only in this sheet https://docs.google.com/spreadsheets/d/1-trefZOl_vSq3KwOPgTp2V7nyrLgxGabtiVpZwJdicI/edit?pli=1#gid=0
      if (unit.systemType == UnitSystemType.imperial &&
          unit.systemNeed == UnitSystemNeed.yes) {
        String name = _getLocalizedAttribute(selectedLanguage, unit, "name");
        String symbol =
            _getLocalizedAttribute(selectedLanguage, unit, "symbol");
        imperialMassUnit.add(LocalizedUnit(name,
            backendKey: unit.backendKey,
            systemType: unit.systemType,
            symbol: symbol,
            stringValue: unit.name.toString()));
      }
    }
    return imperialMassUnit;
  }

  static LocalizedUnit? getUnitByBackendKey(
      String? backendKey, {
        String selectedLanguage = "en",
      }){
    if(backendKey==null)return null;
    LocalizedUnit? unit=  getMassUnitByBackendKey(backendKey,selectedLanguage: selectedLanguage);
    unit ??= getVolumeUnitByBackendKey(backendKey,selectedLanguage: selectedLanguage);
    // print("dEE::${unit?.name}");
    return unit;
  }


  static LocalizedUnit? getMassUnitByBackendKey(
    String backendKey, {
    String selectedLanguage = "en",
  }) {
    List<Unit> all = mass.getAll();

    for (final unit in all) {
      if (unit.systemNeed == UnitSystemNeed.yes &&
          unit.backendKey == backendKey) {
        String name = _getLocalizedAttribute(selectedLanguage, unit, "name");
        String symbol = _getLocalizedAttribute(selectedLanguage, unit, "symbol");

        return LocalizedUnit(
          name,
          backendKey: unit.backendKey,
          systemType: unit.systemType,
          symbol: symbol,
          stringValue: unit.name.toString(),
        );
      }
    }
    return null;
  }

//////////////////// Volume Methods ///////////////////////

  static List<LocalizedUnit> getVolumeUnitsListBySystemType(
      UnitSystemType unitSystemType,
      {String selectedLanguage = "en"}) {
    return unitSystemType == UnitSystemType.metric
        ? getMetricVolumeUnitsList(selectedLanguage: selectedLanguage)
        : getImperialVolumeUnitsList(selectedLanguage: selectedLanguage);
  }

  static List<LocalizedUnit> getMetricVolumeUnitsList(
      {String selectedLanguage = "en"}) {
    metricVolumeUnit.clear();
    List<Unit> all = volume.getAll();

    for (final unit in all) {
      if (unit.systemType == UnitSystemType.metric &&
          unit.systemNeed == UnitSystemNeed.yes) {
        String name = _getLocalizedAttribute(selectedLanguage, unit, "name");
        String symbol =
            _getLocalizedAttribute(selectedLanguage, unit, "symbol");
        metricVolumeUnit.add(LocalizedUnit(name,
            backendKey: unit.backendKey,
            systemType: unit.systemType,
            symbol: symbol,
            stringValue: unit.symbol));
      }
    }
    return metricVolumeUnit;
  }

  static List<LocalizedUnit> getImperialVolumeUnitsList(
      {String selectedLanguage = "en"}) {
    imperialVolumeUnit.clear();
    List<Unit> all = volume.getAll();

    for (final unit in all) {
      if (unit.systemType == UnitSystemType.imperial &&
          unit.systemNeed == UnitSystemNeed.yes) {
        String name = _getLocalizedAttribute(selectedLanguage, unit, "name");
        String symbol =
            _getLocalizedAttribute(selectedLanguage, unit, "symbol");
        imperialVolumeUnit.add(LocalizedUnit(name,
            backendKey: unit.backendKey,
            systemType: unit.systemType,
            symbol: symbol,
            stringValue: unit.symbol));
      }
    }
    return imperialVolumeUnit;
  }

  static LocalizedUnit? getVolumeUnitByBackendKey(String backendKey,
      {String selectedLanguage = "en"}) {
    List<Unit> all = volume.getAll();

    for (final unit in all) {
      if (unit.systemNeed == UnitSystemNeed.yes &&
          unit.backendKey == backendKey) {
        String name = _getLocalizedAttribute(selectedLanguage, unit, "name");
        String symbol =
            _getLocalizedAttribute(selectedLanguage, unit, "symbol");


        return LocalizedUnit(name,
            backendKey: unit.backendKey,
            systemType: unit.systemType,
            symbol: symbol,
            stringValue: unit.symbol);
      }
    }
    return null;
  }

//////////////////// help Methods ///////////////////////
  static String _getLocalizedAttribute(
      String language, Unit unit, String selectedAttribute) {
    if (selectedAttribute == "symbol") {
      if (language == "ar") return unit.symbolAr ?? unit.symbol ?? "UnKnow";
      if (language == "sp") return unit.symbolSp ?? unit.symbol ?? "UnKnow";
      return unit.symbol ?? "UnKnow";
    } else // name
    {
      if (language == "ar") return unit.nameAr ?? unit.name ?? "UnKnow";
      if (language == "sp") return unit.nameSp ?? unit.name ?? "UnKnow";
      return unit.name.toString();
    }
  }
}

enum MeasurementType { volume, weight }
