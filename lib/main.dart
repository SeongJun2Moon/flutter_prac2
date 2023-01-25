import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var message = 'Hello World, \n 반갑다 플러터터 !!';
    return Scaffold(
      body: Center(
        child: Text(message,
          style: TextStyle(color: Colors.black, fontSize: 50.0),
        ),
      ),
    );
  }
}