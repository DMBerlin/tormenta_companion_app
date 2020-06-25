import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tormenta_companion_app/src/models/CharacterModel.dart';

import 'package:tormenta_companion_app/src/views/attributesBuilder.dart';
import 'package:tormenta_companion_app/src/views/classProfile.dart';
import 'package:tormenta_companion_app/src/views/raceProfile.dart';
import 'package:tormenta_companion_app/src/services/racesBuilder.dart';
import 'package:tormenta_companion_app/src/services/classesBuilder.dart';

class NewCharacterBuilder extends StatefulWidget {
  @override
  _NewCharacterBuilderState createState() => _NewCharacterBuilderState();
}

class _NewCharacterBuilderState extends State<NewCharacterBuilder> {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  updateState() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 252, 252, 1),
      body: SafeArea(
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
                      child: Provider.of<CharacterModel>(context)
                          .getProfilePicture(),
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
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      racesOfTormenta[index].name,
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.blueGrey,
                                      ),
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
              Provider.of<CharacterModel>(context).getAttributePoints() > 0
                  ? Container(
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
                            'Defina seus atributos',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AttributesBuilder(
                                  callback: updateState,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.only(
                        top: 32,
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 95,
                                height: 95,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      Provider.of<CharacterModel>(context)
                                          .attributes['Força']
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                    Text('Força')
                                  ],
                                ),
                              ),
                              Container(
                                width: 95,
                                height: 95,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      Provider.of<CharacterModel>(context)
                                          .attributes['Constituição']
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                    Text('Constituição')
                                  ],
                                ),
                              ),
                              Container(
                                width: 95,
                                height: 95,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      Provider.of<CharacterModel>(context)
                                          .attributes['Destreza']
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                    Text('Destreza')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 95,
                                height: 95,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      Provider.of<CharacterModel>(context)
                                          .attributes['Inteligência']
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                    Text('Inteligência')
                                  ],
                                ),
                              ),
                              Container(
                                width: 95,
                                height: 95,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      Provider.of<CharacterModel>(context)
                                          .attributes['Sabedoria']
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                    Text('Sabedoria')
                                  ],
                                ),
                              ),
                              Container(
                                width: 95,
                                height: 95,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      Provider.of<CharacterModel>(context)
                                          .attributes['Carisma']
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                    Text('Carisma')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
              Flexible(
                flex: 1,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Provider.of<CharacterModel>(context)?.race == null
                          ? SizedBox()
                          : Container(
                              child: Center(
                                child: ListTile(
                                  title: Text(
                                      Provider.of<CharacterModel>(context)
                                          .race
                                          .name),
                                  subtitle: Text(
                                    'Raça',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                              ),
                            ),
                      Provider.of<CharacterModel>(context)?.job == null
                          ? Container(
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
                                              padding:
                                                  const EdgeInsets.all(8.0),
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
                                                itemCount:
                                                    classesOfTormenta.length,
                                                itemBuilder: (context, index) =>
                                                    FlatButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            ClassProfile(
                                                          job:
                                                              classesOfTormenta[
                                                                  index],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        classesOfTormenta[index]
                                                            .name,
                                                        style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.blueGrey,
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
                            )
                          : Container(
                              child: Center(
                                child: ListTile(
                                  title: Text(
                                      Provider.of<CharacterModel>(context)
                                          .job
                                          .name),
                                  subtitle: Text(
                                    'Classe',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                              ),
                            ),
                      Provider.of<CharacterModel>(context).job != null &&
                              Provider.of<CharacterModel>(context)
                                      ?.job
                                      ?.perks['Perícia'] ==
                                  null
                          ? Container(
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
                                    'Defina suas perícias.',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
