import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'Responsive Layout'),
      body: Column(
        children: [
          Text(
            'Test',
            style: TextStyle(
              fontSize: 24
              ),
            ),

            Text(
            'Test',
            style: TextStyle(
              fontSize: 24
              ),
            ),

            Text(
            'Test',
            style: TextStyle(
              fontSize: 24
              ),
            ),

            Text(
            'Test',
            style: TextStyle(
              fontSize: 24
              ),
            ),


            Expanded( // this is used to make the widget take the available space in the parent widget. it is a widget that is used to make the child widget take the available space in the parent widget. it is passed as a parameter to the Expanded constructor.
              child: ListView.builder(
                //shrinkWrap: true,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),

            Flexible( // this is used to make the widget flexible. it is a widget that is used to make the child widget flexible. it is used to make the child widget take the available space in the parent widget. it is passed as a parameter to the Flexible constructor.
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),

            Flexible(
              flex: 2, // this is used to set the flex of the widget. it is an integer that is used to set the proportion of the widget in the available space. it is passed as a parameter to the Flexible constructor.
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
        ],
      ),
    );
  }
}