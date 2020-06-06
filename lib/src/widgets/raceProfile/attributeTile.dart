import 'package:flutter/cupertino.dart';

class AttributeTile extends StatefulWidget {
  final Map attribute;
  AttributeTile({this.attribute});
  final List<String> attributeStack = <String>[
    'Força',
    'Destreza',
    'Constituição',
    'Inteligência',
    'Sabedoria',
    'Carisma'
  ];
  _AttributeTileState createState() => _AttributeTileState();
}

class _AttributeTileState extends State<AttributeTile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
