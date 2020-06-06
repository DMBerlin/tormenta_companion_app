import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tormenta_companion_app/src/models/RacesModel.dart';

class RaceProfile extends StatefulWidget {
  final RacesModel race;
  final Function callback;
  RaceProfile({this.race, this.callback});

  @override
  _RaceProfileState createState() => _RaceProfileState();
}

class _RaceProfileState extends State<RaceProfile> {
  RacesModel _race;
  Function _callback;

  @override
  void initState() {
    _race = widget.race;
    _callback = widget.callback;
    super.initState();
  }

  final List<String> attributeStack = <String>[
    'Força',
    'Destreza',
    'Constituição',
    'Inteligência',
    'Sabedoria',
    'Carisma'
  ];

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  Widget manageSubRaces() {
    TextStyle setStyle(val) {
      if (val) {
        return TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        );
      } else {
        return TextStyle(
          color: Colors.blueGrey,
          fontSize: 18,
        );
      }
    }

    if (_race.subRaces != null) {
      return Container(
        height: 38,
        width: 270,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _race.subRaces.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Text(
                  _race.subRaces[index].values.toList()[0],
                  style: setStyle(_race.subRaces[index].values.toList()[1]),
                ),
                onTap: () {
                  setState(() {
                    _race.subRaces
                        .forEach((element) => element['isActive'] = false);
                    _race.subRaces[index]
                        .update('isActive', (existingValue) => true);
                    _race.attributes = _race.subRaces[index]['attributes'];
                  });
                },
              ),
            );
          },
        ),
      );
    } else {
      return SizedBox();
    }
  }

  Widget getRacePenalities() {
    if (_race.attributePenality != null) {
      double customHeight = (70 * _race.attributePenality.length).toDouble();
      return Container(
        width: double.infinity,
        height: customHeight,
        child: ListView.builder(
          itemCount: _race.attributePenality.length,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.red[600],
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            margin: EdgeInsets.all(8),
            width: double.infinity,
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '[Penalidade]: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: _race.attributePenality[index].values
                        .toList()[0]
                        .toString(),
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: '  ',
                  ),
                  TextSpan(
                    text: _race.attributePenality[index].keys
                        .toList()[0]
                        .toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return SizedBox();
    }
  }

  Widget mountDropdownAttributeList(attributes, idx) {
    if (_race.unlockableAttributes) {
      return SizedBox(
        width: 115,
        child: DropdownButton(
          value: attributes[idx].keys.toList()[0],
          // icon: Icon(Icons.arrow_downward),
          // iconSize: 24,
          elevation: 16,
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 16,
          ),
          underline: Container(
              // height: 2,
              // color: Colors.deepPurpleAccent,
              ),
          onChanged: (value) {
            Map<String, int> bonus = new Map();
            bonus = {
              value.toString(): attributes[idx].values.toList()[0],
            };
            setState(() {
              _race.attributes[idx] = bonus;
            });
          },
          items: attributeStack.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      );
    } else {
      return Text(
        attributes[idx].keys.toList()[0],
        style: TextStyle(
          fontSize: 16,
        ),
      );
    }
  }

  Widget getRaceAttributes() {
    if (_race != null) {
      // * Remover atributo de penalidade da lista de opção de escolha
      if (_race.attributePenality != null) {
        int idx = attributeStack.indexWhere((element) =>
            element == _race.attributePenality[0].keys.toList()[0]);
        if (idx > 0) attributeStack.removeAt(idx);
      }

      return Container(
        height: 138,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: _race.attributes.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              width: 133,
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      // margin: EdgeInsets.all(1),
                      child:
                          mountDropdownAttributeList(_race.attributes, index),
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      child: Text(
                        _race.attributes[index].values.toList()[0].toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    } else {
      return Container();
    }
  }

  Widget getRacePowers() {
    if (_race != null) {
      var values = _race.powers.values.toList();
      var keys = _race.powers.keys.toList();
      return Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: values.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        keys[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        values[index],
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(18),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                    ),
                    width: 75,
                    height: 75,
                    // child: getImageAvatar(),
                    child: _race != null
                        ? CircleAvatar(
                            radius: 50,
                            backgroundImage: _race.picture,
                          )
                        : SizedBox(
                            width: 50,
                            height: 50,
                          ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            _race.name,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.red[900],
                            ),
                          ),
                        ),
                        manageSubRaces(),
                      ],
                    ),
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Bonus de Raça',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red[700],
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text:
                          _race.unlockableAttributes ? '  (escolha livre)' : '',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.red[700],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              getRaceAttributes(),
              getRacePenalities(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Características',
                style: TextStyle(
                  color: Colors.red[700],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              getRacePowers(),
              Container(
                child: _race != null
                    ? Container(
                        padding: EdgeInsets.all(24),
                        decoration: new BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Descrição:',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.red[900],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              _race != null ? _race.description : '',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
              ),
              GestureDetector(
                onTap: () {
                  _callback(_race);
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.yellow[900],
                  child: Center(
                    child: Text(
                      'SELECIONAR',
                      style: TextStyle(
                        color: Colors.red[900],
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
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
