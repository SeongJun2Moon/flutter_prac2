import 'package:flutter/material.dart';
import 'package:helloworld/ch21_counter/provider/counter_provider.dart';
import 'package:provider/provider.dart';


class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<CounterProvider>( // Consumer를 활용해서 provider에 접근하여 데이터를 받아올 수 있다
          builder: (context, provider, child) {
            return Text(
              provider.count.toString(), // count를 화면에 출력
              style: TextStyle(fontSize: 100.0),);
          }
      ),
    );
  }
}
