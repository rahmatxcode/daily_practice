import 'dart:convert';

import 'package:daily_practice/dp_appbar.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class APICall extends StatefulWidget {
  const APICall({super.key});

  @override
  State<APICall> createState() => _APICallState();
}

class _APICallState extends State<APICall> {
  List products = [];
  bool isLoading = true;

  @override
  void initState(){
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    // this is the url of the api that we want to call. it is a string that contains the url of the api. it is passed as a parameter to the Uri.parse() method which converts the string into a Uri object. it is then passed as a parameter to the http.get() method which makes a GET request to the api and returns a Future<http.Response> object which contains the response from the api. we can then use the response to get the data from the api.
    final url = Uri.parse(
      'http://35.73.30.144:2008/api/v1//ReadProduct',
    ); // this is the url of the api that we want to call. it is a string that contains the url of the api. it is passed as a parameter to the Uri.parse() method which converts the string into a Uri object. it is then passed as a parameter to the http.get() method which makes a GET request to the api and returns a Future<http.Response> object which contains the response from the api. we can then use the response to get the data from the api.
    final response = await http.get(
      url,
    ); // this is the http.get() method which makes a GET request to the api and returns a Future<http.Response> object which contains the response from the api. we can then use the response to get the data from the api. see postman for the response of the api. it is a json object that contains the data from the api. we can then use the json.decode() method to convert the json object into a dart object. we can then use the dart object to get the data from the api.


    print(response.body);
    print(response.statusCode);
    if(response.statusCode == 200){
      final jsonResponse = jsonDecode(response.body);

      setState((){
        products = jsonResponse['data'];
        isLoading = false;
      });
    }
    else{
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(title: 'API Call'),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 1,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index]; //this is for calling api index
          return Card(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 140,
                    child: Image.network(
                      item['Img'].toString(), // this is for dynamic the data 
                    ),
                  ),
                  Text(
                    item['name'].toString(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
