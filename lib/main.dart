import 'package:flutter/material.dart';

void main() {
  runApp(Comunes());
}

class Comunes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Widgets comunes"),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              Text('Deliver features faster'),
              Text('Craft beautiful UIs'),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain, // otherwise the logo will be tiny
                  child: const FlutterLogo(),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text('Deliver features faste',
                          textAlign: TextAlign.center)),
                  Expanded(
                    child: Text('Craft beautiful UIs',
                        textAlign: TextAlign.center),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: const FlutterLogo(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text("Ingresar"),
                    onPressed: () {
                      SnackBar(
                        content: Text('BUY TICKETS'),
                        action: SnackBarAction(
                          label: 'aceptar',
                          onPressed: () {},
                        ),
                      );
                      print("hola");
                    },
                  ),
                ),
              ),
              Container(
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 50),
                child: Container(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Text("Nombre:"),
                        Text("Apellio:"),
                        Text("Edad:"),
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('BUY TICKETS'),
                              onPressed: () {},
                            ),
                            FlatButton(
                              child: const Text('LISTEN'),
                              onPressed: () {/* ... */},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
