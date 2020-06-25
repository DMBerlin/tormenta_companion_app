import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tormenta_companion_app/src/models/ClassesModel.dart';

class ClassProfile extends StatelessWidget {
  final Function callback;
  final ClassModel job;
  ClassProfile({
    this.job,
    this.callback,
  });

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      // floatingActionButton: FloatingActionButton(
      //   isExtended: true,
      //   backgroundColor: Colors.blue,
      //   child: Icon(FontAwesomeIcons.feather),
      //   onPressed: () {
      //   },
      // ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    job.name,
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    job.description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Características da Classe',
                    style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Perícias',
                    style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: job.perks['Perícias'].length,
                    itemBuilder: (context, index) {
                      if (job.perks['Perícias'][index][0] == 'Ou') {
                        String pSize =
                            job.perks['Perícias'][index][1].length.toString();
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Uma entre essas $pSize:',
                                style: TextStyle(
                                  height: 2,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:
                                    job.perks['Perícias'][index][1].length,
                                itemBuilder: (context, pIndex) {
                                  return Text(
                                    job.perks['Perícias'][index][1][pIndex],
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15,
                                    ),
                                  );
                                },
                              ),
                            ]);
                      } else if (job.perks['Perícias'][index][0] is int) {
                        String arQtd =
                            job.perks['Perícias'][index][0].toString();
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '$arQtd entre essas:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  height: 2,
                                ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:
                                    job.perks['Perícias'][index][1].length,
                                itemBuilder: (context, arIndex) {
                                  return Text(
                                    job.perks['Perícias'][index][1][arIndex],
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15,
                                    ),
                                  );
                                },
                              ),
                            ]);
                      } else {
                        return Text(
                          job.perks['Perícias'][index][0],
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                          ),
                        );
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Habilidades de Classe',
                    style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: job.abilities.length,
                    itemBuilder: (context, index) {
                      String key = job.abilities[index].keys.toList()[0];
                      dynamic value = job.abilities[index].values.toList()[0];
                      if (value is String) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '$key :',
                                style: TextStyle(
                                  height: 2,
                                  // fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500,
                                  color: index == (job.abilities.length - 1)
                                      ? Colors.orange[700]
                                      : Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                value,
                                style: TextStyle(
                                  // height: 2,
                                  // fontStyle: FontStyle.italic,
                                  // fontWeight: FontWeight.w500,
                                  // color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '$key :',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.blueGrey[900],
                                fontSize: 16,
                                height: 2,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: Colors.blueGrey,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.only(
                                left: 16,
                              ),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: value.length,
                                  itemBuilder: (context, index) {
                                    String vKey = value[index].keys.toList()[0];
                                    String vValue =
                                        value[index].values.toList()[0];
                                    return RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '· $vKey :',
                                            style: TextStyle(
                                              height: 2,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          TextSpan(
                                            text: vValue,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 18,
                  ),
                  width: double.infinity,
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      callback(job);
                      Navigator.pop(context);
                    },
                    child: Text(
                      'SELECIONAR',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              child: DrawerHeader(
                child: Center(
                    child: Text(
                  'Progressão da Classe',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                )),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[800],
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: job.trail.length,
                itemBuilder: (context, tIndex) {
                  String nivel = (tIndex + 1).toString();
                  return Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Nivel $nivel',
                          style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            reverse: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: job.trail[tIndex].length,
                            itemBuilder: (context, ttIndex) {
                              return Text(
                                job.trail[tIndex][ttIndex],
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              );
                            }),
                      ],
                    ),
                  );
                  // ListTile(
                  //   title: Text('Nível $nivel'),
                  //   subtitle: Text(job.trail[tIndex].toList().toString()),
                  // );
                })
          ],
        ),
      ),
    );
  }
}
