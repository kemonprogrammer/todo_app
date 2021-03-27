import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ToDo()));

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void surprise() {
      showDialog<AlertDialog>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(title: Text("Suprise!"));
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Test-App"),
        backgroundColor: Color.fromRGBO(35, 0, 0, 100),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return Container(
            width: 10,
            child: IconButton(
                onPressed: surprise,
                icon: Icon(Icons.star),
                color: Colors.yellow,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromRGBO(0, 240, 255, 100),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 10.0,
            ),
            alignment: Alignment.centerLeft,
            constraints: BoxConstraints.tightForFinite(
              width: 20,
            ),
          );
        },
      ),
    );
  }
}
