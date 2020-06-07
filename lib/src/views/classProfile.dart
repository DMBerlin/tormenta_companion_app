import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tormenta_companion_app/src/models/ClassesModel.dart';

class ClassProfile extends StatelessWidget {
  final ClassModel job;
  ClassProfile({
    this.job,
  });

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Flexible(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    job.name,
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    job.description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Características da Classe',
                    style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Pontos de vida:',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          job.perks['Pontos de Vida'],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Pontos de mana:',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(job.perks['Pontos de Mana']),
                      ),
                    ],
                  ),
                  Text(
                    'Habilidades de Classe',
                    style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
