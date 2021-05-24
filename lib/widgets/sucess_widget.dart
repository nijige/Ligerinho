import 'package:flutter/material.dart';

import 'loading-button-widget.dart';

class SucessWidget extends StatelessWidget {
  var result = "";
  Function reset;

  SucessWidget({
    @required this.result,
    @required this.reset,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(60)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          LoadingButton(
              busy: false,
              invert: true,
              func: reset,
              text: "Calcular Novamente"),
        ],
      ),
    );
  }
}
