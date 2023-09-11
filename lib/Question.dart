import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String Questions;
  Question(this.Questions);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Text(
        Questions,
        style: const TextStyle(fontSize: 25,fontStyle: FontStyle.normal,color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
