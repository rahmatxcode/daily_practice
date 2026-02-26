import 'package:daily_practice/dp_appbar.dart';
import 'package:daily_practice/form_validation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(
        title: 'Home Page',
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => FormValidation()),
                  (route) => false,
                );
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(builder: (context) => FormValidation()),
                //   (route) => false,
                // ); this is used to navigate to the next page and remove all the previous pages from the stack so that the user cannot go back to the previous pages. this usually used in logout functionality.
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration( // this is used to decorate the container
                color: Colors.teal, // this is used to change the color of the container


                //multiple colors can be added in the container using gradient
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple], // this is used to add multiple colors
                  begin: Alignment.topLeft, // this is used to set the starting point of the gradient
                  end: Alignment.bottomRight, // this is used to set the ending point of the gradient
                ),


                borderRadius: BorderRadius.circular(16), // this is used to make the container circular


                boxShadow: [ // this is used to add shadow to the container
                  BoxShadow(
                    color: Colors.black.withOpacity(
                      0.5,
                    ), // changes the color of shadow
                    spreadRadius: 2, // changes the spread of shadow
                    blurRadius: 5, // changes the blur of shadow
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                  // multiple shadows can be added in the list
                ]
              ),
              //child can be added in the container to add any widget inside the container
              child: Column(
                children: [
                  Icon(Icons.phone),
                  Text('Phone'),
                ],
                //row or column can be added in the container to add multiple widgets inside the container
              )
            ),
          ],
        ),
      ),
    );
  }
}
