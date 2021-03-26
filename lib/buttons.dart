///
/// Tutorial source: youtube/STARTUP TEENS
/// https://www.youtube.com/watch?v=VBnxI9o4ZYM&list=PLIYzsTnFhywySa9HZYC8wJvpV3c-Fu-Zs&index=11
///

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ToDo()));

class ToDo extends StatelessWidget {
  final List<String> products = ['Tomate', 'Käse', 'Lauch', 'Paprika', 'Wein'];
  @override
  Widget build(BuildContext context) {
    void inform() {
      showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Thanks!'),
          );
        },
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('To-Do-App'),
          backgroundColor: Color.fromRGBO(35, 0, 0, 100),
        ),
        body:
            // ListView.builder(
            //   itemCount: products.length,
            //   itemBuilder: (context, i) {
            //     return ToDoItem(products[i]);
            //   },
            // ),
            Text('Press the Button!'),
        floatingActionButton: FloatingActionButton(
          onPressed: inform,
          child: Icon(Icons.arrow_downward),
        ));
  }
}

class ToDoItem extends StatelessWidget {
  final String title;
  const ToDoItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blueGrey[200],
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(Icons.add),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.black54),
        ),
        trailing: Icon(Icons.delete_sharp),
      ),
    );
  }
}
