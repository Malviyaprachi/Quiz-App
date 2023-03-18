import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget>createState () {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex =0;

  void answerQuestion () {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s  your favorit color ?',
      'What\'s your favorit animal ?',
    ];
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar (
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(question[questionIndex],),
            ElevatedButton(
              child : Text('ANS1'),
              onPressed : answerQuestion ,
            ),
            ElevatedButton(
              child : Text('ANS2'),
              onPressed : answerQuestion ,
            ),
            ElevatedButton(
              child : Text('ANS3'),
              onPressed : answerQuestion ,
            ),
          ],
        ),
      ),
    );
  }
}