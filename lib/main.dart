import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text("Conversor de Temperatura"),
      centerTitle: true,
      backgroundColor: Colors.green,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {},
        ),
      ],
    );

    Icon icon = Icon(Icons.wb_sunny, size: 120, color: Colors.yellow);
    TextStyle styleDecoration =
        TextStyle(color: Colors.blueAccent, fontSize: 22);
    TextStyle styleField = TextStyle(color: Colors.black, letterSpacing: 2);

    RaisedButton rb = RaisedButton(
      onPressed: () {},
      child: Text("CONVERTER"),
      color: Colors.green,
    );

    Container containerBtn = Container(
      height: 60,
      child: rb,
    );

    Padding padding = Padding(
      padding: EdgeInsets.only(top: 20),
      child: containerBtn,
    );

    TextField tempCelsius = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Celsius",
        alignLabelWithHint: true,
        labelStyle: styleDecoration,
        hintText: 'digite a temperatura em Celsius',
      ),
      textAlign: TextAlign.center,
      style: styleField,
    );

    TextField tempFahrenheit = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Fahrenheit",
        alignLabelWithHint: true,
        labelStyle: styleDecoration,
        hintText: 'digite a temperatura em fahrenheit',
      ),
      textAlign: TextAlign.center,
      style: styleField,
    );

    Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        icon,
        tempCelsius,
        tempFahrenheit,
        containerBtn,
      ],
    );

    SingleChildScrollView singleChildScrollView = SingleChildScrollView(
      child: column,
      padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: singleChildScrollView,
    );

    return scaffold;
  }
}
