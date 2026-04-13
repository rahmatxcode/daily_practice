import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class Flist extends StatelessWidget {
  const Flist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'List Views'),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete, color: Colors.red,),
                title: Text('Contact ${index+1}'),
                subtitle: Text('123-456-789${index+1}'),
              ),
            ),
          );
        },
      ),
    );
  }
}