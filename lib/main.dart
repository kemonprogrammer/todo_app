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
        itemCount: 27,
        itemBuilder: (context, i) {
          return Container(
            child: Center(
              child: Text(
                i.toString(),
                style: TextStyle(
                  fontFamily: "sans-serif",
                  color: Colors.white,
                ),
              ),
            ),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(270-10*i, 10, 10*i, 100),
                width: 2,
              )
            ),
          );
        },
      ),
    );
  }
}
