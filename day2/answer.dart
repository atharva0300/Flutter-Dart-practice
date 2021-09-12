import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function()? selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
            onPrimary: Colors.red,
            textStyle: TextStyle(
              color: Colors.white,
            )),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
