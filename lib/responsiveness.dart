import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  const Responsiveness({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery is a widget that provides information about the size of the screen and other properties of the screen. it is used to make the app responsive by using the size of the screen to set the size of the widgets. it is used to get the size of the screen by using the MediaQuery.of(context).size property. it returns a Size object that contains the width and height of the screen. it is used to set the size of the widgets by using the width and height of the screen.
    Size screenSize = MediaQuery.of(context).size; // this is used to get the size of the screen. it is a Size object that contains the width and height of the screen. it is used to make the app responsive by using the width and height of the screen to set the size of the widgets.

    return Scaffold(
      appBar: DpAppbar(title: 'Responsiveness'),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
          
              SizedBox(height: 20),
              
              Container(
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.9,
                color: Colors.green,
              ), // this is used to add some space between the container and the button
          
              SizedBox(height: 20,),
          
              Text('Hello Responsiveness!', style: TextStyle(fontSize: 30),),

              Text('Hello Responsiveness!', style: TextStyle(fontSize: 0.045 * screenSize.width),),
            ],
          ),
        ),
      ),
    );
  }
}