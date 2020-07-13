import 'dart:math';

import 'package:flutter/material.dart';
import 'ScreenResult.dart';

class ScreenMain extends StatefulWidget {
  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  List<String> results = ["Cara", "Coroa"];

  void _showResult() {

    int num = Random().nextInt(results.length);
    String result = results[num];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScreenResult(value: result),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Color.fromRGBO(97, 189, 134, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                width: 271,
                height: 74,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/botao_jogar.png"),
                      fit: BoxFit.cover),
                ),
                child: Material(
                  color: Colors.transparent,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: _showResult,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
