import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';
import 'package:tormenta_companion_app/src/models/CharacterModel.dart';
import 'package:tormenta_companion_app/src/widgets/newCharacter/attribureComputedTile.dart';

class AttributesBuilder extends StatefulWidget {
  final Function callback;
  AttributesBuilder({
    this.callback,
  });
  _AtributesBuilderState createState() => _AtributesBuilderState();
}

class _AtributesBuilderState extends State<AttributesBuilder> {
  Function _callback;
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  updateState() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _callback = widget.callback;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey[200],
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: GridView.count(
                    padding: EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      AttributeComputedTile(
                        attribute: 'Força',
                        value: Provider.of<CharacterModel>(context)
                            .attributes['Força'],
                        callback: updateState,
                      ),
                      AttributeComputedTile(
                        attribute: 'Constituição',
                        value: Provider.of<CharacterModel>(context)
                            .attributes['Constituição'],
                        callback: updateState,
                      ),
                      AttributeComputedTile(
                        attribute: 'Destreza',
                        value: Provider.of<CharacterModel>(context)
                            .attributes['Destreza'],
                        callback: updateState,
                      ),
                      AttributeComputedTile(
                        attribute: 'Inteligência',
                        value: Provider.of<CharacterModel>(context)
                            .attributes['Inteligência'],
                        callback: updateState,
                      ),
                      AttributeComputedTile(
                        attribute: 'Sabedoria',
                        value: Provider.of<CharacterModel>(context)
                            .attributes['Sabedoria'],
                        callback: updateState,
                      ),
                      AttributeComputedTile(
                        attribute: 'Carisma',
                        value: Provider.of<CharacterModel>(context)
                            .attributes['Carisma'],
                        callback: updateState,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueGrey[300],
                        ),
                        child: Center(
                          child: Text(
                            '${Provider.of<CharacterModel>(context).getAttributePoints()}',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.blueGrey[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.windowClose,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {
                                Provider.of<CharacterModel>(
                                  context,
                                  listen: false,
                                ).rebuildAttributePoints();
                                _callback();
                                Navigator.pop(context);
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.undo,
                                size: 16,
                                color: Colors.blueGrey[500],
                              ),
                              onPressed: () {
                                Provider.of<CharacterModel>(
                                  context,
                                  listen: false,
                                ).rebuildAttributePoints();
                                updateState();
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.check,
                                size: 16,
                                color: Colors.blueGrey[500],
                              ),
                              onPressed: () {
                                if (Provider.of<CharacterModel>(
                                      context,
                                      listen: false,
                                    ).getAttributePoints() >
                                    0) {
                                  Toast.show(
                                    "Você ainda pontos para gastar!",
                                    context,
                                    duration: 3,
                                    gravity: Toast.BOTTOM,
                                  );
                                } else {
                                  _callback();
                                  Navigator.pop(context);
                                }
                              },
                            ),
                          ],
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
    );
  }
}
