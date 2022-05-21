import 'package:flutter/material.dart';

class Receipt extends StatefulWidget {
  const Receipt({Key? key}) : super(key: key);

  @override
  _ReceiptState createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
  int number  = 0;

  void tekanTombol(){
      setState(() {
        number = number + 1;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Statefull widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(number.toString()),
            RaisedButton(onPressed: tekanTombol,
            child: Text("Tambah bilangan "),
            ),

            RaisedButton(onPressed: (){
              Navigator.pop(context);
            },child: Text("kembali"))
          ],
        ),
      ),
    );
  }
}
