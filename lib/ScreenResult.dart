import 'package:flutter/material.dart';

class ScreenResult extends StatefulWidget {
  final String value;
  const ScreenResult({Key key, this.value = ""}) : super(key: key);

  @override
  _ScreenResultState createState() => _ScreenResultState();
}

class _ScreenResultState extends State<ScreenResult> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Color.fromRGBO(97, 189, 134, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            this.widget.value == "Cara"
                ? Image.asset("images/moeda_cara.png")
                : Image.asset("images/moeda_coroa.png"),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                width: 248,
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage("images/botao_voltar.png"),
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.pop(context);
                    },
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
