import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ToDo()));

class ToDo extends StatefulWidget {
  @override
  _ToDoState createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  int checkedTodos = 0;

  Map<String, bool> products = {
    'Tomate': false,
    'Käse': false,
    'Lauch': false,
    'Paprika': false,
    'Wein': false,
  };

  void addItem(String item) {
    setState(() {
      products[item] = false;
    });
    Navigator.of(context).pop();
  }

  void deleteItem(String key) {
    setState(() {
      products.remove(key);
    });
  }

  void toggleDone(String key) {
    setState(() {
      products.update(key, (bool done) => !done);
      products[key] ? checkedTodos++ : checkedTodos--;
    });
  }

  void newEntry() {
    showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              content: TextField(
                onSubmitted: addItem,
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('To-Do-App'),
              Container(
                margin: EdgeInsets.only(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  right: 25.0,
                ),
                child: Text(checkedTodos.toString()),
              ),
            ],
          ),
          backgroundColor: Color.fromRGBO(35, 0, 0, 100),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, i) {
            String key = products.keys.elementAt(i);
            return ToDoItem(
              key,
              products[key],
                  () => deleteItem(key),
                  () => toggleDone(key),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: newEntry,
          child: Icon(Icons.add),
          backgroundColor: Color.fromRGBO(35, 153, 185, 100),
        ));
  }
}

class ToDoItem extends StatelessWidget {
  final String title;
  final bool done;
  final Function remove;
  final Function toggleDone;

  const ToDoItem(this.title, this.done, this.remove, this.toggleDone);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 8),
        leading: Checkbox(
          value: done,
          onChanged: (bool value) => toggleDone(),
          activeColor: Color.fromRGBO(23, 152, 185, 100),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: done ? Color.fromRGBO(23, 152, 185, 100) : Colors.black54,
            decoration: done ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete_outline),
          onPressed: () => remove(),
        ),
      ),
    );
  }
}
