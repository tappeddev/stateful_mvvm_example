import 'package:meta/meta.dart';
import 'package:stateful_view_model/stateful_view_model.dart';

class ExampleState implements Cloneable<ExampleState> {
  int counter;

  ExampleState({@required this.counter});

  factory ExampleState.initial() => ExampleState(counter: 0);

  @override
  ExampleState copy() => ExampleState(counter: counter);
}

abstract class ExampleViewModel extends StatefulViewModel<ExampleState> {
  ExampleViewModel(ExampleState initialState) : super(initialState);

  void increase();

  void decrease();
}

class ExampleViewModelImpl extends ExampleViewModel {
  ExampleViewModelImpl([ExampleState initialState])
      : super(initialState ?? ExampleState.initial());

  @override
  void increase() {
    setState((state) {
      state.counter ++;
      return state;
    });
  }

  @override
  void decrease() {
    setState((state) {
      state.counter --;
      return state;
    });
  }
}
