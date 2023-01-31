
import 'package:flutter/material.dart';
// ignore: unused_import
import 'question.dart';
// ignore: unused_import
import 'answer.dart';
// void main(){
//   runApp(MyCoolApp());
//   print("objeceeeeeeet");
// }

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
State<StatefulWidget> createState(){
  return _MyAppState();
}

}

class _MyAppState extends State<MyApp>{

var questionIndex = 0;

void _answerquestion(){
  setState(() {
       questionIndex = questionIndex + 1;
       if (questionIndex > 1){
         questionIndex = 0;
       }
    });
 
  print("answer");
}

  @override
Widget build(BuildContext context){
//data
// var questions = ['what your favorite color?','what your favorite animal',
//       'what your favorite bike',
//       'what your favorite furit'
//     ];

var questions = [
      {'questionText':'what\'s your favorite color?','answer':['Black','Red','Green','White']},
       {
        'questionText': 'what\'s your favorite animal?',
        'answer': ['lion', 'snake', 'cow', 'cat']
      },
    ];



return MaterialApp(home: Scaffold(
appBar: AppBar(title: Text('My first app'),),
body:Column(children: [
  Question(questions[questionIndex]['questionText']),
// map(answer) {return Answer(_answerquestion, answer);}).toList()
...(questions[questionIndex]['answer'] as List<String>).map((answer) => Answer(_answerquestion, answer)).toList()


  // Answer(_answerquestion),
  // Answer(_answerquestion),
  // Answer(_answerquestion),
  // ElevatedButton(child: Text('answer 1'),onPressed: _answerquestion,),
  // ElevatedButton(child: Text('answer 2'),onPressed: (){print("object");},),
  // ElevatedButton(child: Text('answer 2'),onPressed: _answerquestion,)
],),

),);

}

}
