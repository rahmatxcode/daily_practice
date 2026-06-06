import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class StateClass1 extends StatelessWidget {
  StateClass1({super.key});

  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'Stateless Widget'),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(num.toString(), style: TextStyle(fontSize: 100)),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    ElevatedButton(
                      onPressed: () {
                        num--;
                      },
                      child: Text('-', style: TextStyle(fontSize: 50)),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        num++;
                      },
                      child: Text('+', style: TextStyle(fontSize: 50)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
