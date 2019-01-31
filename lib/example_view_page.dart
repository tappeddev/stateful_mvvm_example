import 'package:flutter/cupertino.dart';
import 'package:stateful_mvvm_example/example_view_model.dart';
import 'package:stateful_view_model_widget/stateful_view_model_widget.dart';
import 'package:flutter/material.dart';

class ExampleViewPage extends StatefulWidget {
  ExampleViewPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends StatefulViewModelWidget<ExampleViewPage,
    ExampleState, ExampleViewModel> {

  @override
  ExampleViewModel createViewModel() => ExampleViewModelImpl();

  @override
  Widget buildState(ExampleState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "${state.counter}",
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[FloatingActionButton(
        onPressed: () => viewModel.increase(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), FloatingActionButton(
        onPressed: () => viewModel.decrease(),
        tooltip: 'Decrement',
        child: Icon(Icons.remove),
      )],), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
