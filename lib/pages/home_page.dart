import 'package:aog/widgets/logo_widget.dart';
import 'package:aog/widgets/submit_form.dart';
import 'package:aog/widgets/sucess_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
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
                ? SucessWidget(result: _resultText, reset: () {})
                : SubmitForm(
                    alcCtrl: _alcCtrl,
                    gasCtrl: _gasCtrl,
                    busy: false,
                    submitFun: () {})
          ],
        ));
  }
}
