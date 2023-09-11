import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;
  Answer(this.answerHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 15),
      child: ElevatedButton(

        onPressed: () {
          answerHandler();
        },
        child: Text(answerText),
        style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(150,50))),

      ),
    );
  }
}