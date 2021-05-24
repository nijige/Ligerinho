import 'package:aog/widgets/logo_widget.dart';
import 'package:aog/widgets/submit_form.dart';
import 'package:aog/widgets/sucess_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasCtrl = new MoneyMaskedTextController();

  var _alcCtrl = new MoneyMaskedTextController();

  var _busy = false;

  var _completed = true;

  var _resultText = "Compensa utilizar álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: <Widget>[
            Logo(),
            _completed
                ? SucessWidget(
                  result: _resultText,
                   reset: reset,
                )
                : SubmitForm(
                    alcCtrl: _alcCtrl,
                    gasCtrl: _gasCtrl,
                    busy: _busy,
                    submitFun: calculate,
                  ),
          ],
        ));
  }

  Future calculate() {
    double alc =
        double.parse(_alcCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;

    double gas =
        double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;

    double rest = alc / gas;

    setState(() {
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(
        const Duration(seconds: 2),
        () => {
              setState(() {
                if (rest >= 0.7) {
                  _resultText = "Compensa utilizar Gasolina";
                } else {
                  _resultText = "Compensa utilizar Álcool";
                }

                _completed = false;
                _busy = true;
              })
            });
  }

  reset() {
    setState(() {
      _alcCtrl = new MoneyMaskedTextController();
      _gasCtrl = new MoneyMaskedTextController();
      _completed = false;
      _busy = false;
    });
  }
}
