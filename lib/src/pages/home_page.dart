import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Selecione una tarjeta",
          style: TextStyle(
            color: Colors.blueAccent,
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: [
              CardPokerMini('?', context),
              CardPokerMini('1', context),
              CardPokerMini('2', context),
              CardPokerMini('3', context),
              CardPokerMini('5', context),
              CardPokerMini('8', context),
              CardPokerMini('13', context),
              CardPokerMini('21', context),
              CardPokerMini('34', context),
              CardPokerMini('55', context),
              CardPokerMini('89', context),
              CardPokerMini('144', context),
              CardPokerMini('∞', context),
            ],
          )),
    );
  }

  Widget CardPokerMini(String texto, BuildContext context) {
    return Card(
      color: Colors.indigo,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'detail', arguments: texto);
        },
        child: Center(
          child: Text(
            '$texto',
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
