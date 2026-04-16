import 'package:daily_practice/dp_appbar.dart';
import 'package:daily_practice/widgets/CItyCard.dart';
import 'package:flutter/material.dart';

class Stackwadv extends StatelessWidget {
  const Stackwadv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'Advanced Stack Widget',),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CityCard(img: 'https://tntribune.com/wp-content/uploads/2021/08/feat_30d48d6e-7b84-4dfe-bf22-6306f8a2d403.jpg', title: 'Dhaka', rating: '⭐️ 5.0',),
          ],
        ),
      ),
    );
  }
}