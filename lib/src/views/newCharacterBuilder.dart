import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tormenta_companion_app/src/views/classProfile.dart';

import 'package:tormenta_companion_app/src/widgets/newCharacter/attribureComputedTile.dart';
import 'package:tormenta_companion_app/src/views/raceProfile.dart';

import 'package:tormenta_companion_app/src/services/racesBuilder.dart';
import 'package:tormenta_companion_app/src/services/classesBuilder.dart';

import 'package:tormenta_companion_app/src/models/RacesModel.dart';
import 'package:tormenta_companion_app/src/models/CharacterModel.dart';

class NewCharacterBuilder extends StatefulWidget {
  final CharacterModel character = new CharacterModel(
    attributes: {
      'Força': 10,
      'Destreza': 10,
      'Constituição': 10,
      'Inteligência': 10,
      'Sabedoria': 10,
      'Carisma': 10,
    },
    attributePoints: 20,
  );

  @override
  _NewCharacterBuilderState createState() => _NewCharacterBuilderState();
}

class _NewCharacterBuilderState extends State<NewCharacterBuilder> {
  CharacterModel characterState;

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void initState() {
    characterState = widget.character;
    super.initState();
  }

  void newCharacterCallback(RacesModel characterRace) {
    setState(() {
      characterState.setRace(
        race: characterRace,
      );
    });
  }

  void updateCharacterState({
    Map<String, int> addAttribute,
    Map<String, int> subAttribute,
  }) {
    // * @AddAtribute Command
    if (addAttribute != null) {
      String att = addAttribute.keys.toList()[0];
      int val = addAttribute.values.toList()[0];

      setState(() {
        characterState.updateAttribute(
          attribute: att,
          value: val,
        );
      });
    }
    if (subAttribute != null) {
      String att = subAttribute.keys.toList()[0];
      int val = subAttribute.values.toList()[0];

      setState(() {
        characterState.updateAttribute(
          attribute: att,
          value: val,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print(classesOfTormenta[0].name);
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 252, 252, 1),
      body: SafeArea(
        child: Expanded(
          child: Container(
            // color: Colors.blueGrey[600],
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        width: 70,
                        height: 70,
                        color: Colors.blueGrey[300],
                        child: characterState.getProfilePicture(),
                      ),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            padding: EdgeInsets.only(
                              left: 32,
                              right: 32,
                              top: 16,
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Escolha uma raça',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: ListView.builder(
                                    itemCount: racesOfTormenta.length,
                                    itemBuilder: (context, index) => FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => RaceProfile(
                                              race: racesOfTormenta[index],
                                              callback: newCharacterCallback,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.all(16),
                                            width: 50,
                                            height: 50,
                                            child: CircleAvatar(
                                              radius: 50,
                                              backgroundColor: Colors.blueGrey,
                                              backgroundImage:
                                                  racesOfTormenta[index]
                                                      .picture,
                                            ),
                                          ),
                                          Text(
                                            racesOfTormenta[index].name,
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.blueGrey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        color: Colors.blueGrey[800],
                        height: 70,
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: InputDecoration(
                              labelText: 'Nome do personagem',
                              labelStyle: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blueGrey[200],
                    child: GridView.count(
                      padding: EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      children: <Widget>[
                        AttributeComputedTile(
                          attribute: 'Força',
                          value: characterState.attributes['Força'],
                          character: characterState,
                          callback: updateCharacterState,
                        ),
                        AttributeComputedTile(
                          attribute: 'Constituição',
                          value: characterState.attributes['Constituição'],
                          character: characterState,
                          callback: updateCharacterState,
                        ),
                        AttributeComputedTile(
                          attribute: 'Destreza',
                          value: characterState.attributes['Destreza'],
                          character: characterState,
                          callback: updateCharacterState,
                        ),
                        AttributeComputedTile(
                          attribute: 'Inteligência',
                          value: characterState.attributes['Inteligência'],
                          character: characterState,
                          callback: updateCharacterState,
                        ),
                        AttributeComputedTile(
                          attribute: 'Sabedoria',
                          value: characterState.attributes['Sabedoria'],
                          character: characterState,
                          callback: updateCharacterState,
                        ),
                        AttributeComputedTile(
                          attribute: 'Carisma',
                          value: characterState.attributes['Carisma'],
                          character: characterState,
                          callback: updateCharacterState,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          child: Center(
                            child: FlatButton(
                              child: Text(
                                'Selecione sua classe.',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    padding: EdgeInsets.only(
                                      left: 32,
                                      right: 32,
                                      top: 16,
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Escolha uma classe',
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.blueGrey,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          child: ListView.builder(
                                            itemCount: classesOfTormenta.length,
                                            itemBuilder: (context, index) =>
                                                FlatButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ClassProfile(
                                                      job: classesOfTormenta[
                                                          index],
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Row(
                                                children: <Widget>[
                                                  // Container(
                                                  //   padding: EdgeInsets.all(16),
                                                  //   width: 50,
                                                  //   height: 50,
                                                  //   child: CircleAvatar(
                                                  //     radius: 50,
                                                  //     backgroundColor:
                                                  //         Colors.blueGrey,
                                                  //     backgroundImage:
                                                  //         classesOfTormenta[index]
                                                  //             .picture,
                                                  //   ),
                                                  // ),
                                                  Text(
                                                    classesOfTormenta[index]
                                                        .name,
                                                    style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.blueGrey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
