import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class StackW extends StatelessWidget {
  const StackW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'Stack Widget',),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                  Positioned(
                    top: 50,
                    left: 50,
                    bottom: 20,
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ],
              ),

              SizedBox(height: 20,),
        
              Stack(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage('https://img.pikbest.com/png-images/20241022/stealth-masked-hacker-gaming-logo-for-gamers_10991543.png!bw700'),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 15,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}