import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ToDo()));

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do-App'),
        backgroundColor: Color.fromRGBO(35, 0, 0, 100),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 25,
        itemBuilder: (context, i) {
          return Container(
            child: Center(
              child: Text(
                i.toString(),
                style: TextStyle(
                  fontFamily: "sans-serif",
                ),
              ),
            ),
            height: 50,
            color: Color.fromRGBO(150 + 10 * i, 50 + 5 * i, 22 * i, 1),
          );
        },
      ),
    );
  }
}
