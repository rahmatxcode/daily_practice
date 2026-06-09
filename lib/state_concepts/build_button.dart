import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  String text;
  Color ? color;
  final VoidCallback onClicked;
  BuildButton({
    super.key,
    required this.text,
    this.color,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: color ?? Colors.grey[800],
          ),
          onPressed: onClicked,
          child: Text(text, style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
