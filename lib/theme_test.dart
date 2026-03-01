import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class ThemeTest extends StatelessWidget {
  const ThemeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'Theme Test',),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test Text',
              style: Theme.of(context).textTheme.headlineLarge, // this is used to set the text style of the text. it is used to access the text theme of the theme. it is passed as a parameter to the Text widget.
            ),
            SizedBox(height: 20,),
            TextFormField(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){}, child: Text('Test Button'),),
          ],
        ),
      )
    );
  }
}