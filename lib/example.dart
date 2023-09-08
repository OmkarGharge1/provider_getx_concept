import 'package:flutter/material.dart';
import 'package:practise_app/exampleProvider.dart';
import 'package:provider/provider.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Consumer<exampleProvider>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Example2'),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.amber.withOpacity(provider.opacity),
            ),
            Slider(
              value: provider.opacity,
              onChanged: (value) {
              provider.setOpacity(value);
              },
            )
          ],
        ),
      );
    });
  }
}
