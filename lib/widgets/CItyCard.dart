import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String img, title, rating;
  const CityCard({
    super.key,
    required this.img,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                // image: NetworkImage('https://tntribune.com/wp-content/uploads/2021/08/feat_30d48d6e-7b84-4dfe-bf22-6306f8a2d403.jpg'),
                image: NetworkImage(img),
              )
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 50,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,// this is used to set the main axis alignment of the row. MainAxisAlignment is an enum that contains several values that are used to set the main axis alignment of the row. it is passed as a parameter to the Row constructor.
              children:[
                // Text(
                //   'Bangladesh',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 16,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // Text(
                //   '⭐️ 5.0',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 16,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // this is used to change the background color of the button
                    foregroundColor: Colors.orangeAccent, // this is used to change the text color of the button
                    shape: RoundedRectangleBorder( // this is used to change the shape of the button
                      borderRadius: BorderRadius.circular(10), // this is used to make the button circular
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  onPressed: (){},
                  child: Text(rating),
                ),
                SizedBox(),
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 50,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,// this is used to set the main axis alignment of the row. MainAxisAlignment is an enum that contains several values that are used to set the main axis alignment of the row. it is passed as a parameter to the Row constructor.
              children:[
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                //   '⭐️ 5.0',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 16,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.white, // this is used to change the background color of the button
                //     foregroundColor: Colors.orangeAccent, // this is used to change the text color of the button
                //     shape: RoundedRectangleBorder( // this is used to change the shape of the button
                //       borderRadius: BorderRadius.circular(10), // this is used to make the button circular
                //     ),
                //     padding: EdgeInsets.all(10),
                //   ),
                //   onPressed: (){},
                //   child: Text('⭐️ 5.0'),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}