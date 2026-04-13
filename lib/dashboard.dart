// how to validate form
import 'package:daily_practice/dp_appbar.dart';
import 'package:daily_practice/home_page.dart';
import 'package:daily_practice/theme_test.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map; //
    return Scaffold(
      appBar: const DpAppbar(title: "Dashboard"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              args['email'].toString(), // this is used to get the arguments passed from the previous page. it is passed as a parameter to the Text widget.
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10,),
            Text(
              args['phone'].toString(), // this is used to get the arguments passed from the previous page. it is passed as a parameter to the Text widget.
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10,),
            Text(
              args['name'].toString(), // this is used to get the arguments passed from the previous page. it is passed as a parameter to the Text widget.
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
