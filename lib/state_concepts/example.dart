import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  bool isPasswordShow = true;
  bool isFav = false;

  void toggleFav() {
    setState(() {
      isFav = !isFav;
    });
  }
  
  void togglePasswordVisibility() {
    setState(() {
      isPasswordShow = !isPasswordShow;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                TextField(
                  obscureText: isPasswordShow, // this property is used to hide the text in the text field. It is used for password fields. when it is true, the text will be hidden and when it is false, the text will be visible.
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.lock
                      ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordShow ? Icons.visibility_off : Icons.visibility // this is used to change the icon of the button based on the value of isPasswordShow. when isPasswordShow is true, the icon will be visibility_off and when it is false, the icon will be visibility.
                        ),
                      onPressed: () {
                        togglePasswordVisibility();
                      },
                    ),
                  ),
                ),

                SizedBox(height: 50,),

                IconButton(
                  color: isFav ? Colors.red : Colors.grey, // this is used to change the color of the icon based on the value of isFav. when isFav is true, the color will be red and when it is false, the color will be grey.
                  icon: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border, // this is used to change the icon of the button based on the value of isFav. when isFav is true, the icon will be favorite and when it is false, the icon will be favorite_border.
                    size: 40,
                    ),
                  onPressed: () {
                    toggleFav();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}