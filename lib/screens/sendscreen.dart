import 'package:flutter/material.dart';

class sendButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // Button background color
        onPrimary: Colors.white, // Button text color
        padding: EdgeInsets.symmetric(
            vertical: 16.0, horizontal: 24.0), // Button padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Button border radius
        ),
      ),
      child: Text('send screen'),
    );
  }
}
