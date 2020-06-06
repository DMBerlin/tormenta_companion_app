import 'package:flutter/material.dart';

class RacesModel {
  String name;
  List<Map<String, int>> attributes;
  Map powers;
  AssetImage picture;
  String description;
  bool unlockableAttributes;
  List<Map<String, int>> attributePenality;
  List subRaces;

  RacesModel({
    String name,
    List<Map<String, int>> attributes,
    Map powers,
    AssetImage picture,
    String description,
    bool unlockableAttributes,
    List<Map<String, int>> attributePenality,
    List subRaces,
  }) {
    this.name = name;
    this.attributes = attributes;
    this.powers = powers;
    this.picture = picture;
    this.description = description;
    this.unlockableAttributes = unlockableAttributes;
    this.attributePenality = attributePenality;
    this.subRaces = subRaces;
  }
}
