import 'package:first_app/question.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//void main(){
//  runApp(MyApp());
//}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);




  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

  class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  List<String> questions = ['What is your fav color?', 'What is your fav animal?'];

  void _answerQuestion(){
    //final newIndex = _questionIndex + 1;


    // This will make sure the [_questionIndex] does not exceed the available range.
    setState(() {
      if(_questionIndex == questions.length - 1) {
        _questionIndex = 0; // start again from zero.
      } else {
        _questionIndex = _questionIndex + 1;
      }
    });
    print(_questionIndex);
  }




  @override
  Widget build(BuildContext context){
    var questions = ['What is your favorite color?',
                     'What is your favorite animal',
                     ];
   // print(questions);

    return MaterialApp(
      home: Scaffold(
      appBar:AppBar(
        title: const Text('My First App'),
      ),
      body: Column(
        children:  [
          Question(questions[_questionIndex]),
          //Text(questions[_questionIndex],
          //),
          ElevatedButton(child: const Text('Answer 1'), onPressed: _answerQuestion),
          ElevatedButton(child: const Text('Answer 2'), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}