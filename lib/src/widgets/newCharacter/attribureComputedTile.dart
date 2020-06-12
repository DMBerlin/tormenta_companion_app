import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tormenta_companion_app/src/models/CharacterModel.dart';
import 'package:tormenta_companion_app/src/models/AbilityPointsTable.dart';

AbilityPointsTable abilityTable = new AbilityPointsTable();

class AttributeComputedTile extends StatelessWidget {
  final String attribute;
  final int value;
  final CharacterModel character;
  final int attributePoints;
  final Function callback;

  AttributeComputedTile({
    this.attribute,
    this.value,
    this.character,
    this.attributePoints,
    this.callback,
  });

  bool isAttributeGreaterThanZero(val) {
    return int.parse(computeBonuses(val)) >= 0;
  }

  String computeBonuses(val) {
    double base = 10;
    double bonus = (val - base) / 2;
    return bonus.floor().toString();
  }

  Widget addController(context, value) {
    return GestureDetector(
      onTap: () {
        bool pass =
            abilityTable.canBuy(current: value, bag: character.attributePoints);
        if (pass) {
          character.ballanceWallet(
            currentPrice: abilityTable.getPrice(
              place: value.toString(),
            ),
            nextPrice: abilityTable.getPrice(
              place: (value + 1).toString(),
            ),
          );

          Map<String, int> update = {attribute: value + 1};
          callback(addAttribute: update);

          // * Mostrar saldo na compra de pontos
          // int curBallance = character.getAttributePoints();

          // Scaffold.of(context).showSnackBar(SnackBar(
          //   content: Text('$curBallance pontos restantes!'),
          //   action: SnackBarAction(
          //     label: 'Ok',
          //     onPressed: () {
          //       // Some code to undo the change.
          //     },
          //   ),
          //   duration: Duration(
          //     milliseconds: 300,
          //   ),
          // ));
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
    );
  }

  Widget subController(context, value) {
    return GestureDetector(
      onTap: () {
        int sold = abilityTable.sell(current: value);
        character.sellItem(value: sold);

        Map<String, int> update = {attribute: value - 1};
        callback(subAttribute: update);

        // int curBallance = character.getAttributePoints();

        // Scaffold.of(context).showSnackBar(SnackBar(
        //   content: Text('$curBallance pontos restantes!'),
        //   action: SnackBarAction(
        //     label: 'Ok',
        //     onPressed: () {
        //       // Some code to undo the change.
        //     },
        //   ),
        //   duration: Duration(
        //     milliseconds: 500,
        //   ),
        // ));
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
    );
  }

  @override
  Widget build(BuildContext context) {
    int virtualValue = value;

    if (character.race != null) {
      character.race.attributes.forEach((att) {
        if (att[this.attribute] != null) {
          virtualValue = value + att[this.attribute];
        }
      });
    }

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
              attribute,
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
                  isAttributeGreaterThanZero(virtualValue) ? '+' : '',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey,
                    fontSize: 24,
                  ),
                ),
                Text(
                  computeBonuses(virtualValue),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: isAttributeGreaterThanZero(virtualValue)
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
                subController(context, value),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.grey),
                  ),
                  child: Text(
                    virtualValue.toString(),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                addController(context, value),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
