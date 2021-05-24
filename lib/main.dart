import 'package:aog/pages/home_page.dart';
import 'package:aog/widgets/input_widget.dart';
import 'package:aog/widgets/loading-button-widget.dart';
import 'package:aog/widgets/logo_widget.dart';
import 'package:aog/widgets/submit_form.dart';
import 'package:aog/widgets/sucess_widget.dart';
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

