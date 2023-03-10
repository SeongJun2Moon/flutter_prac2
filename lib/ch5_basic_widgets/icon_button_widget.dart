import 'package:helloworld/ch5_basic_widgets/outlined_button_widget.dart';
import 'package:flutter/material.dart';

class IconButtonWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
            ),
          ),
        ),
      ),
    );
  }
}
