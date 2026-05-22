import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class Responsiveness extends StatelessWidget {
  const Responsiveness({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery is a widget that provides information about the size of the screen and other properties of the screen. it is used to make the app responsive by using the size of the screen to set the size of the widgets. it is used to get the size of the screen by using the MediaQuery.of(context).size property. it returns a Size object that contains the width and height of the screen. it is used to set the size of the widgets by using the width and height of the screen.
    Size screenSize = MediaQuery.of(context,).size; // this is used to get the size of the screen. it is a Size object that contains the width and height of the screen. it is used to make the app responsive by using the width and height of the screen to set the size of the widgets.
    
    // conditional designing is a technique that is used to make the app responsive by using the width of the screen to check if the device is a tablet or not. it is used to set the size of the widgets by using the width of the screen to check if the device is a tablet or not. it is used to make the app responsive by using the width of the screen to check if the device is a tablet or not. it returns true if the width of the screen is greater than 600, otherwise it returns false.
    bool isTablet = screenSize.width > 600; // this is used to check if the device is a tablet or not. it is used to make the app responsive by using the width of the screen to check if the device is a tablet or not. it returns true if the width of the screen is greater than 600, otherwise it returns false.
    return Scaffold(
      appBar: DpAppbar(title: 'Responsiveness'),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('I am ${isTablet ? 'a tablet' : 'a phone'}', style: TextStyle(fontSize: screenSize.width * 0.045, color: Colors.red),), // this is used to display the type of device. it is used to check if the device is a tablet or not by using the isTablet variable. it is used to make the app responsive by using the width of the screen to check if the device is a tablet or not.
              isTablet ? Row(
                children: [
                  Icon(Icons.phone_android, size: 50),
                  SizedBox(height: 10),
                  Icon(Icons.person, size: 50),
                  SizedBox(height: 10),
                  Icon(Icons.home, size: 50),
                  SizedBox(height: 10),
                  Icon(Icons.account_balance, size: 50),
                  SizedBox(height: 10),
                ],
              ) : Column(
                children: [
                  Icon(Icons.phone_android, size: 50),
                  SizedBox(height: 10),
                  Icon(Icons.person, size: 50),
                  SizedBox(height: 10),
                  Icon(Icons.home, size: 50),
                  SizedBox(height: 10),
                  Icon(Icons.account_balance, size: 50),
                  SizedBox(height: 10),
                ],
              ),
              Container(height: 200, width: 200, color: Colors.blue),

              SizedBox(height: 20),

              Container(
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.9,
                color: Colors.green,
              ), // this is used to add some space between the container and the button

              SizedBox(height: 20),
              Text(
                screenSize.width.toString(),
                style: TextStyle(
                  fontSize: 0.045 * screenSize.width,
                  color: Colors.green,
                ),
              ), // this is used to display the width of the screen. it is used to set the font size of the text by using the width of the screen. it is used to make the text responsive by using the width of the screen to set the font size of the text.

              Text(
                'Hello Responsiveness!',
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),

              Text(
                'Hello Responsiveness!',
                style: TextStyle(
                  fontSize: 0.045 * screenSize.width,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}