import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
        child: Text(
          text,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 25,
              fontFamily: "Big Shoulders Display"),
        ),
        onPressed: func,
      ),
    );
  }
}
