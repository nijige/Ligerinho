import 'package:aog/widgets/input_widget.dart';
import 'package:aog/widgets/loading-button-widget.dart';
import 'package:aog/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = MoneyMaskedTextController();
  var _alcCtrl = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: <Widget>[
            Logo(),
            Container(
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
                    "Compensa utilizar álcool",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 40,
                      fontFamily: "Big Shoulders Display",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LoadingButton(
                      busy: false,
                      invert: true,
                      func: () {},
                      text: "Calcular Novamente"),
                ],
              ),
            ),
            Input(
              ctrl: _gasCtrl,
              label: "Gasolina",
            ),
            Input(
              ctrl: _alcCtrl,
              label: "Álcool",
            ),
            LoadingButton(
                busy:true, invert: false, func: () {}, text: "CALCULAR")
          ],
        ));
  }
}
