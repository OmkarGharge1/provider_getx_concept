import 'package:flutter/material.dart';
import 'package:practise_app/provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int qty = 0;

  // void Increment(){

  //   setState(() {
  //     qty++;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    // final counterProvider = Provider.of<CounterProvider>(context, listen: false);
    print('rebuild');
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${counterProvider.qty} ',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: counterProvider.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
