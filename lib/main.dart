import 'package:flutter/material.dart';
import 'package:lamp/lamp.dart';
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'FlashLight'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        leading: Icon(Icons.lightbulb_outline),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Tap to turn on',
              style: Theme.of(context).textTheme.display1,
            ),
            RawMaterialButton(
              onPressed: () {
                Lamp.turnOn(intensity: 1.0);
              },
              child: new Icon(
                Icons.highlight,
                color: Colors.white,
                size: 60.0,
              ),
              shape: new CircleBorder(),
              elevation: 1.0,
              fillColor: Colors.blue,
              padding: const EdgeInsets.all(25.0),
            ),
          ],
        ),
      ),
    );
  }
}
