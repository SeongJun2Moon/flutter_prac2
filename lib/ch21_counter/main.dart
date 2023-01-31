import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/ch21_counter/provider/counter_provider.dart';
import 'package:helloworld/ch21_counter/screen/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: ChangeNotifierProvider(  // ChangeNotifierProvider를 통해 변화에 대해 구독(하나만 구독 가능)
            create: (BuildContext context) => CounterProvider(), // count_provider.dart
            child: HomeScreen() // home.dart // child 하위에 모든 것들은 CountProvider에 접근 할 수 있다.
        ),
    );
  }
}