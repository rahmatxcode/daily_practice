import 'package:daily_practice/dp_appbar.dart';
//import 'package:daily_practice/state_concepts/example.dart';
import 'package:flutter/material.dart';

class StatefulLife extends StatefulWidget {
  StatefulLife({super.key}) {
    print("1. Constructor");
  }

  @override
  State<StatefulLife> createState() {
    print("2. Create State");
    return _StatefulLifeState();
  }
}

class _StatefulLifeState extends State<StatefulLife> {
  String name = 'Flutter';
  Color bgColor = Colors.red;
  @override
  void initState() { // this method is called when the state object is first created. It is called only once and is used to initialize the state of the widget.
    bgColor = Colors.green;
    super.initState();
    print("3. Init State");
  }

  @override
  void didChangeDependencies() {// this method is called when the dependencies of the state object change. It is called immediately after initState and whenever the dependencies change thereafter.
    bgColor = Colors.blue;
    name = "Flutter is awesome";
    super.didChangeDependencies();
    print("4. Did Change Dependencies");
  }

  @override
  void deactivate() { // this method is called when the state object is removed from the tree but might be reinserted before the current frame change is finished. It is called when the widget is removed from the tree, but it might be reinserted before the current frame change is finished.
    super.deactivate();
    print("5. Deactivate");
  }

  @override
  void dispose() { // this method is called when the state object is permanently removed from the tree. It is called when the widget is removed from the tree and will not be reinserted before the current frame change is finished.
    super.dispose();
    print("6. Dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DpAppbar(
        title: "Stateful Life Cycle",
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            InkWell(// this widget is used to detect the tap event on the container. It is a material design widget that provides a visual feedback when the user taps on it. it makes any widget tappable and provides a ripple effect when tapped.
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Example(),
                //   ),
                // );
                Navigator.pushNamed(context, 'example');
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}