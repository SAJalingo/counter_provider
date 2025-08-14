import 'package:counter_provider/Providers/CounterModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const CounterWidget(),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final counter = Provider.of<CounterModel>(
    //   context,
    //);
    return Scaffold(
      body: Center(
        child: Consumer<CounterModel>(
          builder: (
            BuildContext context,
            CounterModel value,
            Widget? child,
          ) {
            return Column(
              children: [
                Text(
                  'Count Value: ${value.counter}',
                ),
                ElevatedButton(
                  onPressed: () {
                    value.increament();
                  },
                  child: const Text('Increament'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
