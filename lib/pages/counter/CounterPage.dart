import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vtah_flutter_intro/modules/counter/CounterBloc.dart';
import 'package:vtah_flutter_intro/modules/counter/CounterEvent.dart';
import 'package:vtah_flutter_intro/modules/counter/CounterView.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return BlocBuilder<CounterBloc, int>(
        builder: (context, count) => CounterView(
          counter: count,
          onCounterIncremented: () => counterBloc.dispatch(CounterEvent.increment)
        )
    );
  }

}