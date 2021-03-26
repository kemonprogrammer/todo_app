import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: UserInput()));

class UserInput extends StatefulWidget {
  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  void updateUserText(String text) {
    setState(() {
      userText = text;
    });
  }

  String userText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: updateUserText,
        ),
        Text(userText),
      ],

    );
  }
}

