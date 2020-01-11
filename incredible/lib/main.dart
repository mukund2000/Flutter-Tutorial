import 'package:flutter/material.dart';

void main() => runApp(TheVoltHome());

//void main

class TheVoltHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      title: "TheVolt Home",
      home: ChangingText(),
    );
  }
}

class ChangingText extends StatefulWidget {
  @override
  _ChangingTextState createState() => _ChangingTextState();
}

class _ChangingTextState extends State<ChangingText> {

//variable declartion
  int text = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => increment(),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        title: Text("TheVolt Home"),
      ),
      body: Container(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange),
            ),
            child: Text(
              "Counter is $text",
              style: TextStyle(
                fontSize: 24,
                color: Colors.orangeAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void increment() {
    setState(() {
      text++;
    });
  }
}
