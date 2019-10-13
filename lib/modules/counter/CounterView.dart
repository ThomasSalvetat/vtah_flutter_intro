import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  final int counter;
  final VoidCallback onCounterIncremented;

  const CounterView({this.counter, this.onCounterIncremented});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onCounterIncremented,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
