import 'package:flutter/material.dart';
import 'package:stateful_mvvm_example/example_view_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExampleViewPage(title: 'Flutter Demo Home Page'),
    );
  }
}