import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _button(),
          _button(),
          _button(),
        ],
      ),
    );
  }

  _button() {
    return RaisedButton(
      color: Colors.blue,
      onPressed: () => _onClickOk(),
      child: Text(
        'Ok',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }

  void _onClickOk() {
    print('Clicou no botão');
  }

  _img() {
    return Image.asset(
      'assets/images/dog4.png',
      fit: BoxFit.cover,
    );
  }

  _text() {
    return Text(
      'Hello Word',
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }
}
