import 'package:flutter/material.dart';
import 'package:practise_app/example.dart';
import 'package:practise_app/exampleProvider.dart';
import 'package:practise_app/listview.dart';
import 'package:practise_app/listviewProvider.dart';
import 'package:practise_app/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CounterProvider(),
      ),
      ChangeNotifierProvider(create: (cxt) => exampleProvider()),
      ChangeNotifierProvider(create: (create)=> ListViewProvider()),
    ],
    child: (const MyApp()),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ListViewExample());
  }
}
