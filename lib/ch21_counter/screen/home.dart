import 'package:flutter/material.dart';
import 'package:helloworld/ch21_counter/components/calculator.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/ch21_counter/provider/counter_provider.dart';

class HomeScreen extends StatelessWidget {

  late CounterProvider _countProvider;

  @override
  Widget build(BuildContext context) {

    // Provider를 호출해 접근, listen: false를 통해 구독된 모든 위젯들에게 알림을 보내지 않게 한다.
    _countProvider = Provider.of<CounterProvider>(context, listen: false);

    return Scaffold(

      appBar: AppBar(
        title: Text("카운터", style: TextStyle(fontSize: 40),),
      ),
      body: CountHomeWidget(), // count_home_widget.dart
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _countProvider.add(); // 클릭 되었을 때 add()
            },
            iconSize: 60,
            color: Colors.orange,
          ),
          IconButton(icon: Icon(Icons.remove),
            onPressed: () {
              _countProvider.remove(); // 클릭 되었을 때 remove()
            },
            iconSize: 60,
            color: Colors.teal
          )
        ],),
    );
  }
}
