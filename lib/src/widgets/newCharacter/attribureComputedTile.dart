import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tormenta_companion_app/src/models/CharacterModel.dart';

class AbilityPointsTable {
  Map<String, int> table = {
    '8': -2,
    '9': -1,
    '10': 0,
    '11': 1,
    '12': 2,
    '13': 3,
    '14': 4,
    '15': 6,
    '16': 8,
    '17': 11,
    '18': 14
  };

  int getPrice({String place}) {
    return table[place];
  }

  bool canBuy({current, bag}) {
    int wallet = bag + this.table[current.toString()];
    int target = current + 1;
    int price = this.table[target.toString()];
    return price <= wallet;
  }

  int sell({current, bag}) {
    return this.table[current.toString()] -
        this.table[(current - 1).toString()];
  }
}

class AttributeComputedTile extends StatefulWidget {
  final String attribute;
  final int value;
  final CharacterModel character;
  // final int attributePoints;
  AttributeComputedTile({
    this.attribute,
    this.value,
    this.character,
    // this.attributePoints,
  });
  @override
  _AttributeComputedTileState createState() => _AttributeComputedTileState();
}

class _AttributeComputedTileState extends State<AttributeComputedTile> {
  String _attribute;
  int _value;
  // int _attributePoints;
  CharacterModel _character;
  AbilityPointsTable abilityTable = new AbilityPointsTable();

  @override
  void initState() {
    _attribute = widget.attribute;
    _value = widget.value;
    _character = widget.character;
    // _attributePoints = widget.attributePoints;
    super.initState();
  }

  bool isAttributeGreaterThanZero() {
    return int.parse(computeBonuses()) >= 0;
  }

  String computeBonuses() {
    double base = 10;
    double bonus = (_value - base) / 2;
    return bonus.floor().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 175,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _attribute,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 90,
            height: 45,
            // color: Colors.grey[300],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  isAttributeGreaterThanZero() ? '+' : '',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey,
                    fontSize: 24,
                  ),
                ),
                Text(
                  computeBonuses(),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: isAttributeGreaterThanZero()
                        ? Colors.grey
                        : Colors.red[900],
                    fontSize: 38,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    int sold = abilityTable.sell(current: _value);
                    setState(() {
                      _character.sellItem(value: sold);
                      _value--;
                    });
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Center(child: Text('-')),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.grey),
                  ),
                  child: Text(
                    _value.toString(),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    bool pass = abilityTable.canBuy(
                        current: _value, bag: _character.attributePoints);
                    if (pass) {
                      setState(() {
                        _character.ballanceWallet(
                          currentPrice: abilityTable.getPrice(
                            place: _value.toString(),
                          ),
                          nextPrice: abilityTable.getPrice(
                            place: (_value + 1).toString(),
                          ),
                        );
                        _value++;
                      });
                    } else {}
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Center(child: Text('+')),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
