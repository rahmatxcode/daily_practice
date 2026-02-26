import 'package:daily_practice/dp_appbar.dart';
import 'package:flutter/material.dart';

class Gridv extends StatelessWidget {
  const Gridv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(
        title: 'Grid View',
      ),
      // body: GridView.count(
      //   crossAxisCount: 3,// this is used to create a grid view with a fixed number of columns. crossAxisCount is the number of columns in the grid view. it is required to be passed as a parameter to the GridView.count constructor.
      //   crossAxisSpacing: 10,// this is used to set the spacing between the columns in the grid view. it is optional to be passed as a parameter to the GridView.count constructor. if it is not passed, the default value is 0.
      //   mainAxisSpacing: 10,// this is used to set the spacing between the rows in the grid view. it is optional to be passed as a parameter to the GridView.count constructor. if it is not passed, the default value is 0.
      //   children: List.generate(
      //     100, 
      //     (index) => Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //           height: 150,
      //           width: 150,
      //           decoration: BoxDecoration( // this is used to decorate the container
      //             color: Colors.teal, // this is used to change the color of the container
            
            
      //             //multiple colors can be added in the container using gradient
      //             gradient: LinearGradient(
      //               colors: [Colors.blue, Colors.purple], // this is used to add multiple colors
      //               begin: Alignment.topLeft, // this is used to set the starting point of the gradient
      //               end: Alignment.bottomRight, // this is used to set the ending point of the gradient
      //             ),
            
            
      //             borderRadius: BorderRadius.circular(16), // this is used to make the container circular
            
            
      //             boxShadow: [ // this is used to add shadow to the container
      //               BoxShadow(
      //                 color: Colors.black.withOpacity(
      //                   0.5,
      //                 ), // changes the color of shadow
      //                 spreadRadius: 2, // changes the spread of shadow
      //                 blurRadius: 5, // changes the blur of shadow
      //                 offset: Offset(0, 1), // changes position of shadow
      //               ),
      //               // multiple shadows can be added in the list
      //             ]
      //           ),
      //           //child can be added in the container to add any widget inside the container
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Icon(Icons.phone, color: Colors.white,size: 50,),
      //               Text('Phone', style: TextStyle(color: Colors.white, fontSize: 20),),
      //             ],
      //             //row or column can be added in the container to add multiple widgets inside the container
      //           )
      //         ),
      //     ),
      //       ),// this is used to generate a list of containers. List.generate is a constructor that generates a list of a given length and fills it with values returned by a function. the first parameter is the length of the list and the second parameter is the function that returns the value for each index in the list.
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ), // this is used to create a grid view with a fixed number of columns. SliverGridDelegateWithFixedCrossAxisCount is a delegate that controls the layout of the children in the grid view. it is required to be passed as a parameter to the GridView.builder constructor.
        itemCount: 100, // this is used to set the number of items in the grid view. it is required to be passed as a parameter to the GridView.builder constructor.
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: Colors.white,size: 50,),
                    Text('Phone - ${index+1}', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                  //row or column can be added in the container to add multiple widgets inside the container
                )
              ),
          );
        }// this is used to build the items in the grid view. it is required to be passed as a parameter to the GridView.builder constructor. it takes a function that returns a widget for each index in the grid view. the function takes two parameters, context and index. context is the BuildContext of the widget and index is the index of the item in the grid view.

        // index এর প্রয়োজন থাকলে অথবা API থেকে ডাটা নিয়ে আসার প্রয়োজন থাকলে GridView.builder ব্যবহার করা হয়। আর যদি শুধু একটা লিস্ট অফ উইজেট দেখাতে হয় তাহলে GridView.count ব্যবহার করা হয়।
      ),
    );
  }
}