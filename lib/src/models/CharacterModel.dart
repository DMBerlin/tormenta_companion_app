import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tormenta_companion_app/src/models/RacesModel.dart';
import 'package:tormenta_companion_app/src/models/ClassesModel.dart';

class CharacterModel {
  AssetImage picture;
  String player;
  String origin;
  String name;
  int level;
  RacesModel race;
  ClassModel job;
  Map hitpoints;
  Map manapoints;
  Map skills;
  Map talents;
  Map attributes;
  int attributePoints;

  CharacterModel(
      {AssetImage picture,
      String player,
      String origin,
      String name,
      int level,
      RacesModel race,
      ClassModel job,
      Map hitpoints,
      Map manapoints,
      Map skills,
      Map talents,
      Map attributes,
      int attributePoints}) {
    this.picture = picture;
    this.player = player;
    this.origin = origin;
    this.name = name;
    this.level = level;
    this.race = race;
    this.job = job;
    this.hitpoints = hitpoints;
    this.manapoints = manapoints;
    this.skills = skills;
    this.talents = talents;
    this.attributes = attributes;
    this.attributePoints = attributePoints;
  }

  getProfilePicture() {
    if (race != null) {
      return SizedBox(
        width: 70,
        height: 70,
        child: CircleAvatar(
          radius: 50,
          backgroundImage: race.picture,
        ),
      );
    } else {
      return SizedBox(
        width: 70,
        height: 70,
        child: Icon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      );
    }
  }

  resetBuilt() {
    this.attributes = {
      'Força': 10,
      'Destreza': 10,
      'Constituição': 10,
      'Inteligência': 10,
      'Sabedoria': 10,
      'Carisma': 10,
    };
    this.attributePoints = 20;
  }

  setRace({RacesModel race}) {
    this.race = race;
    // addRaceAttributes(
    //   attributes: this.race.attributes,
    // );
  }

  setJob({ClassModel job}) {
    this.job = job;
  }

  setRaceAttributes({List<Map> attributes}) {
    attributes.forEach(
      (att) => this.attributes[att.keys
          .toString()
          .replaceAll('(', '')
          .replaceAll(')', '')] += int.parse(
        att.values.toString().replaceAll('(', '').replaceAll(')', ''),
      ),
    );
  }

  updateAttribute({String attribute, int value}) {
    this.attributes[attribute] = value;
    print(this.attributes);
  }

  ballanceWallet({int currentPrice, int nextPrice}) {
    this.attributePoints += currentPrice;
    this.attributePoints -= nextPrice;
    int ballance = this.attributePoints;
    print('Ballance: $ballance');
  }

  sellItem({int value}) {
    this.attributePoints += value;
    int ballance = this.attributePoints;
    print('Ballance: $ballance');
  }

  getAttribute({String attribute}) {
    return this.attributes[attribute];
  }
}
