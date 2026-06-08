import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class StateClass2 extends StatefulWidget {
  StateClass2({super.key});

  @override
  State<StateClass2> createState() => _StateClass2State();
}

class _StateClass2State extends State<StateClass2> {
  int num = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'Stateful Widget'),
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
                        setState(() {
                          num--;
                        });
                      },
                      child: Text('-', style: TextStyle(fontSize: 50)),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() { // this is used to update the state of the widget. it is a method that is called when the state of the widget is changed. it takes a function as a parameter that contains the code to update the state of the widget. it is used to update the state of the widget and rebuild the widget with the new state. it is called inside the onPressed callback of the button. এটা ব্যবহার করা হয় যখন উইজেটের স্টেট পরিবর্তিত হয়। এটি একটি ফাংশন নেয় যা উইজেটের স্টেট আপডেট করার কোড ধারণ করে। এটি উইজেটের স্টেট আপডেট করতে এবং নতুন স্টেট সহ উইজেটটি পুনরায় তৈরি করতে ব্যবহৃত হয়। এটি বোতামের onPressed কলব্যাকের ভিতরে কল করা হয়।

                          num++;
                        });
                      },
                      child: Text('+', style: TextStyle(fontSize: 50)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        num = 0;
                      });
                    },
                    child: Text('Reset', style: TextStyle(fontSize: 30)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // this is used to change the background color of the button
                      foregroundColor: Colors.white, // this is used to change the text color of the button
                      shape: RoundedRectangleBorder( // this is used to change the shape of the button
                        borderRadius: BorderRadius.circular(8), // this is used to make the button circular
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
