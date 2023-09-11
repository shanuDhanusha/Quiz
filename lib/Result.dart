import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String Score;
  final Function Restart;
  Result(this.Score,this.Restart, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
              'Stop quiz:${Score}',
               style: const TextStyle(color: Colors.black,fontSize:25,fontStyle: FontStyle.normal),
              ),
           ElevatedButton(
               onPressed:(){Restart();}, 
               child:const Text('Restart Quiz'),
               style: ButtonStyle( elevation: MaterialStateProperty.all(10)),
           )
         ],
       ),
    );
  }
}
