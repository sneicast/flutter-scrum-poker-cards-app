import 'package:flutter/material.dart';
import 'package:scrum_poker_cards/src/pages/card_detail_page.dart';
import 'package:scrum_poker_cards/src/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scrum Poker',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomePage(),
        'detail': (_) => CardDetailPage(),
      },
    );
  }
}
