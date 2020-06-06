import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tormenta_companion_app/src/models/RacesModel.dart';
import 'package:tormenta_companion_app/src/views/raceProfile.dart';
import 'package:tormenta_companion_app/src/services/racesBuilder.dart';
import 'package:tormenta_companion_app/src/models/CharacterModel.dart';
import 'package:tormenta_companion_app/src/widgets/newCharacter/attribureComputedTile.dart';

class NewCharacterSheet extends StatefulWidget {
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
  _NewCharacterSheetState createState() => _NewCharacterSheetState();
}

class _NewCharacterSheetState extends State<NewCharacterSheet> {
  CharacterModel _character;

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void initState() {
    _character = widget.character;
    super.initState();
  }

  void newCharacterCallback(Race characterRace) {
    print(characterRace);
    setState(() {
      _character.setRace(
        race: characterRace,
      );
    });
  }

  // void newCharacterAttUpdate(Map<String, int> attributes) {
  //   print(attributes);
  //   setState(() {
  //     character.updateAttribute(update: attributes);
  //   });
  // }

  // CharacterModel getCharacter() {
  //   return this.character;
  // }

  @override
  Widget build(BuildContext context) {
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
                        child: _character.getProfilePicture(),
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
                          value: _character.attributes['Força'],
                          character: _character,
                          // controller: newCharacterAttUpdate,
                        ),
                        AttributeComputedTile(
                          attribute: 'Constituição',
                          value: _character.attributes['Constituição'],
                          character: _character,
                          // controller: newCharacterAttUpdate,
                        ),
                        AttributeComputedTile(
                          attribute: 'Destreza',
                          value: _character.attributes['Destreza'],
                          character: _character,
                          // controller: newCharacterAttUpdate,
                        ),
                        AttributeComputedTile(
                          attribute: 'Inteligência',
                          value: _character.attributes['Inteligência'],
                          character: _character,
                          // controller: newCharacterAttUpdate,
                        ),
                        AttributeComputedTile(
                          attribute: 'Sabedoria',
                          value: _character.attributes['Sabedoria'],
                          character: _character,
                          // controller: newCharacterAttUpdate,
                        ),
                        AttributeComputedTile(
                          attribute: 'Carisma',
                          value: _character.attributes['Carisma'],
                          character: _character,
                          // controller: newCharacterAttUpdate,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
