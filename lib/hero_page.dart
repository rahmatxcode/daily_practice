import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'Hero Animation Page',),
      body: Center(
        child: Hero(
          tag: 'loadmore',
          child: Text('This is the Hero Page'),
        ),
      ),
    );
  }
}