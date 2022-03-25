import 'package:flutter/material.dart';

class CardDetailPage extends StatelessWidget {
  const CardDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String value = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Tarjeta $value",
          style: const TextStyle(
            color: Color.fromARGB(255, 5, 52, 134),
            fontSize: 30.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          '$value',
          style: TextStyle(fontSize: 200.0),
        ),
      ),
    );
  }
}
