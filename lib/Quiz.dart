import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>>questions;
  final int quetionIndex;
  final Function answerChoose;
  Quiz({required this.questions,required this.quetionIndex,required this.answerChoose});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[quetionIndex]['quetion'].toString()),
        ...(questions[quetionIndex]['answer'] as List<Map<String,Object>>).map((answer){
          return Answer(()=>answerChoose(answer['score']),answer['text'] as String);
        }).toList()

      ],
    );
  }
}
