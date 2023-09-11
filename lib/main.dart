import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';
import 'Quiz.dart';
import 'Result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mytodo();
  }

}
class mytodo extends State<MyApp> {
  final questions=const[
    {'quetion':'whats your favourite color?','answer':[{'text':'Black','score':10},{'text':'White','score':0},{'text':'Oranj','score':0}]},
    {'quetion':'whats your favourite animal?','answer':[{'text':'Dog','score':10},{'text':'Cat','score':0},{'text':'Elipent','score':0}]},
    {'quetion':'whats your favourite grail?','answer':[{'text':'Madu','score':10},{'text':'Boole','score':0},{'text':'Umakate','score':0}]},
  ];
   var quetionIndex=0; //make question index for get list element
   int Resultscore=0;  // score increment

   //increment question index to list
   void answerChoose(int score){
     setState(() {
       quetionIndex=quetionIndex+1;
       Resultscore +=score;
     });
   }
   //...
  void RestartQuiz(){
     setState(() {
        quetionIndex=0;
        Resultscore=0;
     });
  }

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
           title: const Text(
             'MY Todo',
             style: TextStyle(fontSize: 20.0,color: Colors.white,fontStyle: FontStyle.normal),
           ),
        ),
        body: quetionIndex<questions.length?Quiz(
            questions: questions,
            quetionIndex: quetionIndex,
            answerChoose: answerChoose
        ) : Result(Resultscore.toString(),RestartQuiz),
      ),
    );
  }
}
