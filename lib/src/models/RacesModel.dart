import 'package:flutter/material.dart';

class RacesModel {
  String name;
  String motto;
  List<Map<String, int>> attributes;
  Map powers;
  AssetImage picture;
  String description;
  bool unlockableAttributes;
  List<Map<String, int>> attributePenality;
  List subRaces;

  RacesModel({
    String name,
    String motto,
    List<Map<String, int>> attributes,
    Map powers,
    AssetImage picture,
    String description,
    bool unlockableAttributes,
    List<Map<String, int>> attributePenality,
    List subRaces,
  }) {
    this.name = name;
    this.motto = motto;
    this.attributes = attributes;
    this.powers = powers;
    this.picture = picture;
    this.description = description;
    this.unlockableAttributes = unlockableAttributes;
    this.attributePenality = attributePenality;
    this.subRaces = subRaces;
  }
}
